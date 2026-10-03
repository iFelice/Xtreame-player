package p027d2;

import android.os.Build;
import java.util.LinkedHashSet;
import java.util.UUID;
import p096m2.q;
import p190y4.k;
import z4.q0;

/* JADX INFO: loaded from: classes.dex */
public abstract class w {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public UUID f24647a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public q f24648b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final LinkedHashSet f24649c;

    public w(Class cls) {
        UUID uuidRandomUUID = UUID.randomUUID();
        q0.g(uuidRandomUUID, "randomUUID()");
        this.f24647a = uuidRandomUUID;
        String string = this.f24647a.toString();
        q0.g(string, "id.toString()");
        this.f24648b = new q(string, 0, cls.getName(), null, null, null, 0L, 0L, 0L, null, 0, 0, 0L, 0L, 0L, 0L, false, 0, 0, 1048570, 0);
        String[] strArr = {cls.getName()};
        LinkedHashSet linkedHashSet = new LinkedHashSet(k.X(1));
        linkedHashSet.add(strArr[0]);
        this.f24649c = linkedHashSet;
    }

    public final p a() {
        o oVar = (o) this;
        p pVar = new p(oVar.f24647a, oVar.f24648b, oVar.f24649c);
        d dVar = this.f24648b.f27251j;
        int i8 = Build.VERSION.SDK_INT;
        boolean z7 = (i8 >= 24 && (dVar.f24627h.isEmpty() ^ true)) || dVar.f24623d || dVar.f24621b || (i8 >= 23 && dVar.f24622c);
        q qVar = this.f24648b;
        if (qVar.f27258q) {
            if (!(!z7)) {
                throw new IllegalArgumentException("Expedited jobs only support network and storage constraints".toString());
            }
            if (qVar.f27248g > 0) {
                throw new IllegalArgumentException("Expedited jobs cannot be delayed".toString());
            }
        }
        UUID uuidRandomUUID = UUID.randomUUID();
        q0.g(uuidRandomUUID, "randomUUID()");
        this.f24647a = uuidRandomUUID;
        String string = uuidRandomUUID.toString();
        q0.g(string, "id.toString()");
        q qVar2 = this.f24648b;
        q0.h(qVar2, "other");
        int i9 = qVar2.f27243b;
        String str = qVar2.f27245d;
        e eVar = new e(qVar2.f27246e);
        e eVar2 = new e(qVar2.f27247f);
        d dVar2 = qVar2.f27251j;
        q0.h(dVar2, "other");
        this.f24648b = new q(string, i9, qVar2.f27244c, str, eVar, eVar2, qVar2.f27248g, qVar2.f27249h, qVar2.f27250i, new d(dVar2.f24620a, dVar2.f24621b, dVar2.f24622c, dVar2.f24623d, dVar2.f24624e, dVar2.f24625f, dVar2.f24626g, dVar2.f24627h), qVar2.f27252k, qVar2.f27253l, qVar2.f27254m, qVar2.f27255n, qVar2.f27256o, qVar2.f27257p, qVar2.f27258q, qVar2.f27259r, qVar2.f27260s, 524288, 0);
        return pVar;
    }
}
