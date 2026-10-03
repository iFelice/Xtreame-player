package X1;

import android.view.View;
import java.util.ArrayList;

/* JADX INFO: loaded from: classes.dex */
public final class j implements p {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final /* synthetic */ View f7570a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ ArrayList f7571b;

    public j(View view, ArrayList arrayList) {
        this.f7570a = view;
        this.f7571b = arrayList;
    }

    @Override // X1.p
    public final void b(q qVar) {
        qVar.w(this);
        this.f7570a.setVisibility(8);
        ArrayList arrayList = this.f7571b;
        int size = arrayList.size();
        for (int i8 = 0; i8 < size; i8++) {
            ((View) arrayList.get(i8)).setVisibility(0);
        }
    }

    @Override // X1.p
    public final void a() {
    }

    @Override // X1.p
    public final void c() {
    }

    @Override // X1.p
    public final void d() {
    }
}
