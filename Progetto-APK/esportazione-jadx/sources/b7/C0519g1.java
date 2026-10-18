package b7;

import android.util.Log;
import android.widget.SeekBar;
import com.google.protobuf.U2;
import org.videolan.libvlc.MediaPlayer;
import pe.hf.black20.PlayStreamEPGActivity;

/* JADX INFO: renamed from: b7.g1, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes2.dex */
public final class C0519g1 implements SeekBar.OnSeekBarChangeListener {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f10304a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ PlayStreamEPGActivity f10305b;

    public /* synthetic */ C0519g1(PlayStreamEPGActivity playStreamEPGActivity, int i8) {
        this.f10304a = i8;
        this.f10305b = playStreamEPGActivity;
    }

    @Override // android.widget.SeekBar.OnSeekBarChangeListener
    public final void onProgressChanged(SeekBar seekBar, int i8, boolean z7) {
        MediaPlayer mediaPlayer;
        switch (this.f10304a) {
            case 0:
                if (z7) {
                    PlayStreamEPGActivity playStreamEPGActivity = this.f10305b;
                    playStreamEPGActivity.f28964x1 = playStreamEPGActivity.f28961w1.getProgress() * 1000;
                    if (U2.z("ORT_WHICH_CAT", "TV", "VOD") || U2.z("ORT_WHICH_CAT", "TV", "SERIES")) {
                        if (U2.z("ORT_WHICH_PLAYER", "EXO", "EXO")) {
                            B0.O o4 = playStreamEPGActivity.f28859J2;
                            if (o4 != null) {
                                o4.j(5, playStreamEPGActivity.f28964x1);
                            }
                        } else if (U2.z("ORT_WHICH_PLAYER", "EXO", "VLC") && (mediaPlayer = playStreamEPGActivity.f28911f2) != null) {
                            mediaPlayer.setTime(playStreamEPGActivity.f28964x1);
                        }
                        playStreamEPGActivity.O();
                    }
                }
                break;
            case 1:
                Log.d("XCIPTV_TAG", "PlayStreamEPGActivity - onStopTrackingTouch-onProgressChanged");
                break;
            default:
                Log.d("XCIPTV_TAG", "PlayStreamEPGActivity - onStopTrackingTouch-onProgressChanged");
                break;
        }
    }

    @Override // android.widget.SeekBar.OnSeekBarChangeListener
    public final void onStopTrackingTouch(SeekBar seekBar) {
        switch (this.f10304a) {
            case 0:
                boolean z7 = U2.z("ORT_WHICH_PLAYER", "EXO", "EXO");
                PlayStreamEPGActivity playStreamEPGActivity = this.f10305b;
                if (z7) {
                    playStreamEPGActivity.f28859J2.j(5, playStreamEPGActivity.f28961w1.getProgress() * 1000);
                } else if (U2.z("ORT_WHICH_PLAYER", "EXO", "VLC")) {
                    playStreamEPGActivity.f28911f2.setTime(playStreamEPGActivity.f28961w1.getProgress() * 1000);
                }
                String str = PlayStreamEPGActivity.THEME;
                playStreamEPGActivity.O();
                break;
            case 1:
                Log.d("XCIPTV_TAG", "PlayStreamEPGActivity - onStopTrackingTouch");
                break;
            default:
                Log.d("XCIPTV_TAG", "PlayStreamEPGActivity - onStopTrackingTouch");
                break;
        }
    }

    @Override // android.widget.SeekBar.OnSeekBarChangeListener
    public final void onStartTrackingTouch(SeekBar seekBar) {
    }
}
