package p071j;

import N.V;
import p027d2.v;
import p086l.o1;

/* JADX INFO: loaded from: classes.dex */
public final class j extends v {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f25650a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public boolean f25651b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public int f25652c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final /* synthetic */ Object f25653d;

    public j(k kVar) {
        this.f25650a = 0;
        this.f25653d = kVar;
        this.f25651b = false;
        this.f25652c = 0;
    }

    @Override // p027d2.v, N.V
    public final void a() {
        switch (this.f25650a) {
            case 1:
                this.f25651b = true;
                break;
        }
    }

    @Override // p027d2.v, N.V
    public final void b() {
        int i8 = this.f25650a;
        Object obj = this.f25653d;
        switch (i8) {
            case 0:
                if (!this.f25651b) {
                    this.f25651b = true;
                    V v5 = ((k) obj).f25657d;
                    if (v5 != null) {
                        v5.b();
                    }
                    break;
                }
                break;
            default:
                ((o1) obj).f26323a.setVisibility(0);
                break;
        }
    }

    @Override // N.V
    public final void c() {
        int i8 = this.f25650a;
        Object obj = this.f25653d;
        switch (i8) {
            case 0:
                int i9 = this.f25652c + 1;
                this.f25652c = i9;
                k kVar = (k) obj;
                if (i9 == kVar.f25654a.size()) {
                    V v5 = kVar.f25657d;
                    if (v5 != null) {
                        v5.c();
                    }
                    this.f25652c = 0;
                    this.f25651b = false;
                    kVar.f25658e = false;
                }
                break;
            default:
                if (!this.f25651b) {
                    ((o1) obj).f26323a.setVisibility(this.f25652c);
                }
                break;
        }
    }

    public j(o1 o1Var, int i8) {
        this.f25650a = 1;
        this.f25653d = o1Var;
        this.f25652c = i8;
        this.f25651b = false;
    }
}
