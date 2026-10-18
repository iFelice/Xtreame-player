package b7;

import org.videolan.libvlc.MediaPlayer;
import org.videolan.libvlc.interfaces.AbstractVLCEvent;
import pe.hf.black20.CatchupPlayerActivity;

/* JADX INFO: renamed from: b7.k, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes2.dex */
public final class C0529k implements MediaPlayer.EventListener {

    /* JADX INFO: renamed from: G, reason: collision with root package name */
    public final /* synthetic */ CatchupPlayerActivity f10329G;

    public C0529k(CatchupPlayerActivity catchupPlayerActivity) {
        this.f10329G = catchupPlayerActivity;
    }

    @Override // org.videolan.libvlc.interfaces.AbstractVLCEvent.Listener
    public final void onEvent(AbstractVLCEvent abstractVLCEvent) {
        int i8 = ((MediaPlayer.Event) abstractVLCEvent).type;
        CatchupPlayerActivity catchupPlayerActivity = this.f10329G;
        switch (i8) {
            case MediaPlayer.Event.Opening /* 258 */:
                catchupPlayerActivity.f28338O.setVisibility(0);
                break;
            case MediaPlayer.Event.Playing /* 260 */:
                catchupPlayerActivity.f28338O.setVisibility(8);
                break;
            case MediaPlayer.Event.Paused /* 261 */:
                catchupPlayerActivity.f28338O.setVisibility(8);
                break;
            case MediaPlayer.Event.Stopped /* 262 */:
                catchupPlayerActivity.f28338O.setVisibility(8);
                break;
        }
    }
}
