package D1;

import O1.c0;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import androidx.recyclerview.widget.RecyclerView;
import pe.hf.black20.R;

/* JADX INFO: renamed from: D1.n, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes.dex */
public final class C0149n extends O1.C {

    /* JADX INFO: renamed from: I, reason: collision with root package name */
    public final String[] f2193I;

    /* JADX INFO: renamed from: J, reason: collision with root package name */
    public final float[] f2194J;

    /* JADX INFO: renamed from: K, reason: collision with root package name */
    public int f2195K;

    /* JADX INFO: renamed from: L, reason: collision with root package name */
    public final /* synthetic */ C0156v f2196L;

    public C0149n(C0156v c0156v, String[] strArr, float[] fArr) {
        this.f2196L = c0156v;
        this.f2193I = strArr;
        this.f2194J = fArr;
    }

    @Override // O1.C
    public final int a() {
        return this.f2193I.length;
    }

    @Override // O1.C
    public final void c(c0 c0Var, final int i8) {
        r rVar = (r) c0Var;
        String[] strArr = this.f2193I;
        if (i8 < strArr.length) {
            rVar.f2207a0.setText(strArr[i8]);
        }
        int i9 = this.f2195K;
        View view = rVar.f2208b0;
        View view2 = rVar.f5353G;
        if (i8 == i9) {
            view2.setSelected(true);
            view.setVisibility(0);
        } else {
            view2.setSelected(false);
            view.setVisibility(4);
        }
        view2.setOnClickListener(new View.OnClickListener() { // from class: D1.m
            @Override // android.view.View.OnClickListener
            public final void onClick(View view3) {
                C0149n c0149n = this.f2191G;
                int i10 = c0149n.f2195K;
                int i11 = i8;
                C0156v c0156v = c0149n.f2196L;
                if (i11 != i10) {
                    c0156v.setPlaybackSpeed(c0149n.f2194J[i11]);
                }
                c0156v.f2253W.dismiss();
            }
        });
    }

    @Override // O1.C
    public final c0 d(RecyclerView recyclerView, int i8) {
        return new r(LayoutInflater.from(this.f2196L.getContext()).inflate(R.layout.exo_styled_sub_settings_list_item, (ViewGroup) recyclerView, false));
    }
}
