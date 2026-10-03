package O1;

import androidx.recyclerview.widget.RecyclerView;

/* JADX INFO: loaded from: classes.dex */
public final class f0 extends P {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public boolean f5390a = false;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ C0324x f5391b;

    public f0(C0324x c0324x) {
        this.f5391b = c0324x;
    }

    @Override // O1.P
    public final void a(int i8) {
        if (i8 == 0 && this.f5390a) {
            this.f5390a = false;
            this.f5391b.f();
        }
    }

    @Override // O1.P
    public final void b(RecyclerView recyclerView, int i8, int i9) {
        if (i8 == 0 && i9 == 0) {
            return;
        }
        this.f5390a = true;
    }
}
