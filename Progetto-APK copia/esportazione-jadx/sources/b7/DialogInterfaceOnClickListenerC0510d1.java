package b7;

import android.content.DialogInterface;
import android.content.SharedPreferences;
import android.os.Handler;
import android.util.Log;
import pe.hf.black20.PlayStreamEPGActivity;

/* JADX INFO: renamed from: b7.d1, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes2.dex */
public final /* synthetic */ class DialogInterfaceOnClickListenerC0510d1 implements DialogInterface.OnClickListener {

    /* JADX INFO: renamed from: G, reason: collision with root package name */
    public final /* synthetic */ int f10282G;

    /* JADX INFO: renamed from: H, reason: collision with root package name */
    public final /* synthetic */ Object f10283H;

    /* JADX INFO: renamed from: I, reason: collision with root package name */
    public final /* synthetic */ Object f10284I;

    /* JADX INFO: renamed from: J, reason: collision with root package name */
    public final /* synthetic */ Object f10285J;

    public /* synthetic */ DialogInterfaceOnClickListenerC0510d1(Object obj, Object obj2, Object obj3, int i8) {
        this.f10282G = i8;
        this.f10283H = obj;
        this.f10284I = obj2;
        this.f10285J = obj3;
    }

    @Override // android.content.DialogInterface.OnClickListener
    public final void onClick(DialogInterface dialogInterface, int i8) {
        int i9 = this.f10282G;
        Object obj = this.f10285J;
        Object obj2 = this.f10284I;
        Object obj3 = this.f10283H;
        switch (i9) {
            case 0:
                PlayStreamEPGActivity playStreamEPGActivity = (PlayStreamEPGActivity) obj3;
                String[] strArr = (String[]) obj2;
                SharedPreferences.Editor editor = (SharedPreferences.Editor) obj;
                String str = PlayStreamEPGActivity.THEME;
                playStreamEPGActivity.getClass();
                Log.d("XCIPTV_TAG", "Sutitles ID ----------- " + strArr[i8]);
                editor.putString("video_subtiltes_vlc", "no");
                editor.apply();
                playStreamEPGActivity.f28911f2.pause();
                new Handler().postDelayed(new p086l.Y(i8, dialogInterface, playStreamEPGActivity, strArr), 1000L);
                break;
            default:
                e7.d.V((p094m0.k0) obj3, (e7.d) obj2, (p004a3.i) obj);
                break;
        }
    }
}
