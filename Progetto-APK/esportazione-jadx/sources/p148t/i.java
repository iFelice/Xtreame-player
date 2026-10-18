package p148t;

/* JADX INFO: loaded from: classes.dex */
public final class i {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public Object f30159a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public l f30160b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public m f30161c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public boolean f30162d;

    public final void a(Object obj) {
        this.f30162d = true;
        l lVar = this.f30160b;
        if (lVar == null || !lVar.f30165H.i(obj)) {
            return;
        }
        this.f30159a = null;
        this.f30160b = null;
        this.f30161c = null;
    }

    public final void finalize() {
        m mVar;
        l lVar = this.f30160b;
        if (lVar != null) {
            k kVar = lVar.f30165H;
            if (!kVar.isDone()) {
                kVar.j(new c("The completer object was garbage collected - this future would otherwise never complete. The tag was: " + this.f30159a, 1));
            }
        }
        if (this.f30162d || (mVar = this.f30161c) == null) {
            return;
        }
        mVar.i(null);
    }
}
