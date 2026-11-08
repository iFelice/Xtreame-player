package p032e0;

/* JADX INFO: loaded from: classes.dex */
public abstract class s {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final w f24761a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public boolean f24762b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public int f24763c = -1;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final /* synthetic */ t f24764d;

    public s(t tVar, w wVar) {
        this.f24764d = tVar;
        this.f24761a = wVar;
    }

    public final void a(boolean z7) {
        if (z7 == this.f24762b) {
            return;
        }
        this.f24762b = z7;
        int i8 = z7 ? 1 : -1;
        t tVar = this.f24764d;
        int i9 = tVar.f24768c;
        tVar.f24768c = i8 + i9;
        if (!tVar.f24769d) {
            tVar.f24769d = true;
            while (true) {
                try {
                    int i10 = tVar.f24768c;
                    if (i9 == i10) {
                        break;
                    } else {
                        i9 = i10;
                    }
                } catch (Throwable th) {
                    tVar.f24769d = false;
                    throw th;
                }
            }
            tVar.f24769d = false;
        }
        if (this.f24762b) {
            tVar.b(this);
        }
    }
}
