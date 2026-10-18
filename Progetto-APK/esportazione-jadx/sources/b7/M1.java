package b7;

import android.view.View;
import pe.hf.black20.UsersHistoryActivity;

/* JADX INFO: loaded from: classes2.dex */
public final class M1 implements View.OnClickListener {

    /* JADX INFO: renamed from: G, reason: collision with root package name */
    public final /* synthetic */ int f10143G;

    /* JADX INFO: renamed from: H, reason: collision with root package name */
    public final /* synthetic */ UsersHistoryActivity f10144H;

    public /* synthetic */ M1(UsersHistoryActivity usersHistoryActivity, int i8) {
        this.f10143G = i8;
        this.f10144H = usersHistoryActivity;
    }

    @Override // android.view.View.OnClickListener
    public final void onClick(View view) {
        int i8 = this.f10143G;
        UsersHistoryActivity usersHistoryActivity = this.f10144H;
        switch (i8) {
            case 0:
                usersHistoryActivity.f29244W = "xtreamcodes";
                UsersHistoryActivity.a(usersHistoryActivity);
                break;
            case 1:
                usersHistoryActivity.f29244W = "m3u";
                UsersHistoryActivity.a(usersHistoryActivity);
                break;
            case 2:
                usersHistoryActivity.f29244W = "ezserver";
                UsersHistoryActivity.a(usersHistoryActivity);
                break;
            case 3:
                usersHistoryActivity.f29244W = "otr";
                UsersHistoryActivity.a(usersHistoryActivity);
                break;
            default:
                usersHistoryActivity.f29243V.dismiss();
                break;
        }
    }
}
