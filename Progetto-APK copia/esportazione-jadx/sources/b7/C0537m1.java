package b7;

import android.util.Log;
import org.videolan.libvlc.MediaPlayer;
import org.videolan.libvlc.interfaces.AbstractVLCEvent;
import pe.hf.black20.RadioPlayerActivity;

/* JADX INFO: renamed from: b7.m1, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes2.dex */
public final class C0537m1 implements MediaPlayer.EventListener {

    /* JADX INFO: renamed from: G, reason: collision with root package name */
    public final /* synthetic */ String f10353G;

    /* JADX INFO: renamed from: H, reason: collision with root package name */
    public final /* synthetic */ RadioPlayerActivity f10354H;

    public C0537m1(RadioPlayerActivity radioPlayerActivity, String str) {
        this.f10354H = radioPlayerActivity;
        this.f10353G = str;
    }

    @Override // org.videolan.libvlc.interfaces.AbstractVLCEvent.Listener
    public final void onEvent(AbstractVLCEvent abstractVLCEvent) {
        MediaPlayer.Event event = (MediaPlayer.Event) abstractVLCEvent;
        int i8 = event.type;
        if (i8 == 258) {
            Log.i("XCIPTV_TAG", "Event Opening");
            return;
        }
        if (i8 == 259) {
            Log.i("XCIPTV_TAG", "Event Buffering=" + event.getBuffering());
        } else {
            if (i8 != 262) {
                return;
            }
            Log.i("XCIPTV_TAG", "Event Stopped");
            RadioPlayerActivity.a(this.f10354H, this.f10353G);
        }
    }
}
