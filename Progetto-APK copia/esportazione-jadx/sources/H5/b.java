package H5;

import p130q5.i;
import p130q5.o;

/* JADX INFO: loaded from: classes2.dex */
public final class b {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final p176w5.b f3766a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final o f3767b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final o f3768c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final o f3769d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final o f3770e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final int f3771f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public final int f3772g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final int f3773h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final int f3774i;

    public b(p176w5.b bVar, o oVar, o oVar2, o oVar3, o oVar4) throws i {
        boolean z7 = oVar == null || oVar2 == null;
        boolean z8 = oVar3 == null || oVar4 == null;
        if (z7 && z8) {
            throw i.f29623I;
        }
        if (z7) {
            oVar = new o(0.0f, oVar3.f29646b);
            oVar2 = new o(0.0f, oVar4.f29646b);
        } else if (z8) {
            int i8 = bVar.f31091G;
            oVar3 = new o(i8 - 1, oVar.f29646b);
            oVar4 = new o(i8 - 1, oVar2.f29646b);
        }
        this.f3766a = bVar;
        this.f3767b = oVar;
        this.f3768c = oVar2;
        this.f3769d = oVar3;
        this.f3770e = oVar4;
        this.f3771f = (int) Math.min(oVar.f29645a, oVar2.f29645a);
        this.f3772g = (int) Math.max(oVar3.f29645a, oVar4.f29645a);
        this.f3773h = (int) Math.min(oVar.f29646b, oVar3.f29646b);
        this.f3774i = (int) Math.max(oVar2.f29646b, oVar4.f29646b);
    }

    public b(b bVar) {
        this.f3766a = bVar.f3766a;
        this.f3767b = bVar.f3767b;
        this.f3768c = bVar.f3768c;
        this.f3769d = bVar.f3769d;
        this.f3770e = bVar.f3770e;
        this.f3771f = bVar.f3771f;
        this.f3772g = bVar.f3772g;
        this.f3773h = bVar.f3773h;
        this.f3774i = bVar.f3774i;
    }
}
