<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\TicketOrder;
use App\Models\Checkin;
use Illuminate\Support\Facades\DB;
use Illuminate\Support\Facades\Log;

class CheckinController extends Controller
{
    public function checkin(Request $request)
    {
        $kodeUnik = $request->input('kode_unik');

        // Cek QR Code
        $ticket = TicketOrder::where('qrcode', $kodeUnik)->first();

        if (!$ticket) {
            return response()->json(['message' => 'QR Code tidak ditemukan.'], 404);
        }

        // Cek apakah sudah pernah check-in
        $sudahCheckin = Checkin::where('identity_number', $ticket->identity_number)
                               ->where('event_id', $ticket->event_id)
                               ->exists();

        if ($sudahCheckin) {
            return response()->json(['message' => 'Tiket ini sudah digunakan untuk check-in.'], 400);
        }

        try {
            DB::beginTransaction();

            Checkin::create([
                'event_id' => $ticket->event_id,
                'name' => $ticket->name,
                'identity_number' => $ticket->identity_number,
                'jam_checkin' => now(),
                'status' => 'valid',
            ]);

            DB::commit();

            return response()->json([
                'message' => 'Check-in berhasil.',
                'nama' => $ticket->name,
                'event_id' => $ticket->event_id,
                'jam_checkin' => now()->toDateTimeString(),
            ]);
        } catch (\Exception $e) {
            DB::rollBack();
            Log::error('Check-in gagal: ' . $e->getMessage());
            return response()->json(['message' => 'Gagal melakukan check-in.'], 500);
        }
    }

    public function dataCheckins()
    {
        $checkins = Checkin::with('event:id,title')->get();
        return view('admin.layouts.checkins', compact('checkins'));
    }
}
    