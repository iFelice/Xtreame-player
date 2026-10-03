package b7;

import android.app.AlertDialog;
import android.view.View;
import com.google.protobuf.U2;
import pe.hf.black20.PlayStreamEPGActivity;

/* JADX INFO: renamed from: b7.c1, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes2.dex */
public final /* synthetic */ class ViewOnClickListenerC0507c1 implements View.OnClickListener {

    /* JADX INFO: renamed from: G, reason: collision with root package name */
    public final /* synthetic */ int f10277G;

    /* JADX INFO: renamed from: H, reason: collision with root package name */
    public final /* synthetic */ PlayStreamEPGActivity f10278H;

    /* JADX INFO: renamed from: I, reason: collision with root package name */
    public final /* synthetic */ AlertDialog f10279I;

    public /* synthetic */ ViewOnClickListenerC0507c1(PlayStreamEPGActivity playStreamEPGActivity, AlertDialog alertDialog, int i8) {
        this.f10277G = i8;
        this.f10278H = playStreamEPGActivity;
        this.f10279I = alertDialog;
    }

    @Override // android.view.View.OnClickListener
    public final void onClick(View view) {
        int i8 = this.f10277G;
        AlertDialog alertDialog = this.f10279I;
        PlayStreamEPGActivity playStreamEPGActivity = this.f10278H;
        switch (i8) {
            case 0:
                String str = PlayStreamEPGActivity.THEME;
                playStreamEPGActivity.getClass();
                if (z4.q0.q().c("ORT_WHICH_PLAYER", "EXO").equals("EXO")) {
                    playStreamEPGActivity.f28859J2.j(5, playStreamEPGActivity.f28870N1);
                    playStreamEPGActivity.f28961w1.setProgress(playStreamEPGActivity.f28870N1 / 1000);
                    playStreamEPGActivity.z();
                } else if (U2.z("ORT_WHICH_PLAYER", "EXO", "VLC")) {
                    playStreamEPGActivity.f28911f2.setTime(playStreamEPGActivity.f28870N1);
                    playStreamEPGActivity.f28961w1.setProgress(playStreamEPGActivity.f28870N1 / 1000);
                    playStreamEPGActivity.z();
                }
                alertDialog.dismiss();
                break;
            case 1:
                String str2 = PlayStreamEPGActivity.THEME;
                playStreamEPGActivity.getClass();
                if (z4.q0.q().c("ORT_WHICH_PLAYER", "EXO").equals("EXO")) {
                    playStreamEPGActivity.f28859J2.j(5, 1L);
                    playStreamEPGActivity.z();
                } else if (U2.z("ORT_WHICH_PLAYER", "EXO", "VLC")) {
                    playStreamEPGActivity.f28911f2.setTime(0L);
                    playStreamEPGActivity.z();
                }
                alertDialog.dismiss();
                break;
            default:
                String str3 = PlayStreamEPGActivity.THEME;
                playStreamEPGActivity.getClass();
                new AsyncTaskC0522h1(playStreamEPGActivity).execute(new Void[0]);
                alertDialog.dismiss();
                break;
        }
    }
}
