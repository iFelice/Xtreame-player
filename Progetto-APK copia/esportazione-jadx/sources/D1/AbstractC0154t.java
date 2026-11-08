package D1;

import O1.c0;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.TextView;
import androidx.recyclerview.widget.RecyclerView;
import b7.o1;
import java.util.ArrayList;
import java.util.List;
import p094m0.Y;
import p094m0.g0;
import pe.hf.black20.R;

/* JADX INFO: renamed from: D1.t, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes.dex */
public abstract class AbstractC0154t extends O1.C {

    /* JADX INFO: renamed from: I, reason: collision with root package name */
    public List f2212I = new ArrayList();

    /* JADX INFO: renamed from: J, reason: collision with root package name */
    public final /* synthetic */ C0156v f2213J;

    public AbstractC0154t(C0156v c0156v) {
        this.f2213J = c0156v;
    }

    @Override // O1.C
    public final int a() {
        if (this.f2212I.isEmpty()) {
            return 0;
        }
        return this.f2212I.size() + 1;
    }

    @Override // O1.C
    public final c0 d(RecyclerView recyclerView, int i8) {
        return new r(LayoutInflater.from(this.f2213J.getContext()).inflate(R.layout.exo_styled_sub_settings_list_item, (ViewGroup) recyclerView, false));
    }

    public void f(r rVar, int i8) {
        Y y7 = this.f2213J.f2252V0;
        if (y7 == null) {
        }
        View view = rVar.f5353G;
        View view2 = rVar.f2208b0;
        TextView textView = rVar.f2207a0;
        int i9 = 4;
        int i10 = 0;
        if (i8 != 0) {
            C0153s c0153s = (C0153s) this.f2212I.get(i8 - 1);
            g0 g0Var = c0153s.f2209a.f26949b;
            boolean z7 = ((B0.O) y7).E().f26915D.get(g0Var) != null && c0153s.f2209a.f26952e[c0153s.f2210b];
            textView.setText(c0153s.f2211c);
            view2.setVisibility(z7 ? 0 : 4);
            view.setOnClickListener(new o1(this, y7, g0Var, c0153s, 2));
            return;
        }
        C0145j c0145j = (C0145j) this;
        switch (c0145j.f2188K) {
            case 0:
                textView.setText(R.string.exo_track_selection_auto);
                Y y8 = c0145j.f2189L.f2252V0;
                y8.getClass();
                view2.setVisibility(c0145j.g(((B0.O) y8).E()) ? 4 : 0);
                view.setOnClickListener(new ViewOnClickListenerC0144i(c0145j, i10));
                break;
            default:
                textView.setText(R.string.exo_track_selection_none);
                for (int i11 = 0; i11 < c0145j.f2212I.size(); i11++) {
                    C0153s c0153s2 = (C0153s) c0145j.f2212I.get(i11);
                    if (c0153s2.f2209a.f26952e[c0153s2.f2210b]) {
                        view2.setVisibility(i9);
                        view.setOnClickListener(new ViewOnClickListenerC0144i(c0145j, 2));
                    }
                    break;
                }
                i9 = 0;
                view2.setVisibility(i9);
                view.setOnClickListener(new ViewOnClickListenerC0144i(c0145j, 2));
                break;
        }
    }
}
