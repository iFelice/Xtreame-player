package b7;

import android.view.View;
import android.widget.AdapterView;
import pe.hf.black20.PlayStreamEPGActivity;

/* JADX INFO: loaded from: classes2.dex */
public final /* synthetic */ class X0 implements AdapterView.OnItemClickListener {

    /* JADX INFO: renamed from: G, reason: collision with root package name */
    public final /* synthetic */ int f10250G;

    /* JADX INFO: renamed from: H, reason: collision with root package name */
    public final /* synthetic */ PlayStreamEPGActivity f10251H;

    public /* synthetic */ X0(PlayStreamEPGActivity playStreamEPGActivity, int i8) {
        this.f10250G = i8;
        this.f10251H = playStreamEPGActivity;
    }

    @Override // android.widget.AdapterView.OnItemClickListener
    public final void onItemClick(AdapterView adapterView, View view, int i8, long j8) {
        int i9 = this.f10250G;
        PlayStreamEPGActivity playStreamEPGActivity = this.f10251H;
        switch (i9) {
            case 0:
                String str = PlayStreamEPGActivity.THEME;
                playStreamEPGActivity.Z();
                break;
            default:
                String str2 = PlayStreamEPGActivity.THEME;
                playStreamEPGActivity.Z();
                break;
        }
    }
}
