package p017c0;

import O1.C;
import O1.c0;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.TextView;
import androidx.leanback.widget.VerticalGridView;
import androidx.recyclerview.widget.RecyclerView;
import java.util.ArrayList;

/* JADX INFO: loaded from: classes.dex */
public final class c extends C {

    /* JADX INFO: renamed from: I, reason: collision with root package name */
    public final int f10566I;

    /* JADX INFO: renamed from: J, reason: collision with root package name */
    public final int f10567J;

    /* JADX INFO: renamed from: K, reason: collision with root package name */
    public final int f10568K;

    /* JADX INFO: renamed from: L, reason: collision with root package name */
    public final f f10569L;

    /* JADX INFO: renamed from: M, reason: collision with root package name */
    public final /* synthetic */ e f10570M;

    public c(e eVar, int i8, int i9, int i10) {
        this.f10570M = eVar;
        this.f10566I = i8;
        this.f10567J = i10;
        this.f10568K = i9;
        this.f10569L = (f) eVar.f10575J.get(i10);
    }

    @Override // O1.C
    public final int a() {
        f fVar = this.f10569L;
        if (fVar == null) {
            return 0;
        }
        return (fVar.f10590c - fVar.f10589b) + 1;
    }

    @Override // O1.C
    public final void c(c0 c0Var, int i8) {
        f fVar;
        d dVar = (d) c0Var;
        TextView textView = dVar.f10571a0;
        if (textView != null && (fVar = this.f10569L) != null) {
            int i9 = fVar.f10589b + i8;
            CharSequence[] charSequenceArr = fVar.f10591d;
            textView.setText(charSequenceArr == null ? String.format(fVar.f10592e, Integer.valueOf(i9)) : charSequenceArr[i9]);
        }
        e eVar = this.f10570M;
        ArrayList arrayList = eVar.f10574I;
        int i10 = this.f10567J;
        eVar.c(dVar.f5353G, ((VerticalGridView) arrayList.get(i10)).getSelectedPosition() == i8, i10, false);
    }

    @Override // O1.C
    public final c0 d(RecyclerView recyclerView, int i8) {
        View viewInflate = LayoutInflater.from(recyclerView.getContext()).inflate(this.f10566I, (ViewGroup) recyclerView, false);
        int i9 = this.f10568K;
        return new d(viewInflate, i9 != 0 ? (TextView) viewInflate.findViewById(i9) : (TextView) viewInflate);
    }

    @Override // O1.C
    public final void e(c0 c0Var) {
        ((d) c0Var).f5353G.setFocusable(this.f10570M.isActivated());
    }
}
