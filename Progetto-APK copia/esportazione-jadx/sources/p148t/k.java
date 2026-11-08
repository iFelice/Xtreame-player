package p148t;

/* JADX INFO: loaded from: classes.dex */
public final class k extends h {

    /* JADX INFO: renamed from: N, reason: collision with root package name */
    public final /* synthetic */ l f30163N;

    public k(l lVar) {
        this.f30163N = lVar;
    }

    @Override // p148t.h
    public final String g() {
        i iVar = (i) this.f30163N.f30164G.get();
        if (iVar == null) {
            return "Completer object has been garbage collected, future will fail soon";
        }
        return "tag=[" + iVar.f30159a + "]";
    }
}
