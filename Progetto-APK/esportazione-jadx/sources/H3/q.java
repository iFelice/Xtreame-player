package H3;

import C3.B;
import C3.F;
import C3.I;
import K3.AbstractC0245s;
import android.text.TextUtils;
import android.util.Log;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import java.util.concurrent.atomic.AtomicLong;

/* JADX INFO: loaded from: classes.dex */
public abstract class q {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final b f3720a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final String f3721b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public p004a3.b f3722c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final List f3723d;

    public q(String str) {
        a.c(str);
        this.f3721b = str;
        this.f3720a = new b("MediaControlChannel", null);
        this.f3723d = Collections.synchronizedList(new ArrayList());
    }

    public final void a(p pVar) {
        this.f3723d.add(pVar);
    }

    public final long b() {
        p004a3.b bVar = this.f3722c;
        if (bVar != null) {
            return ((AtomicLong) bVar.f8651I).getAndIncrement();
        }
        b bVar2 = this.f3720a;
        Log.e(bVar2.f3679a, bVar2.c("Attempt to generate requestId without a sink", new Object[0]));
        return 0L;
    }

    public final void c(long j8, String str) {
        p004a3.b bVar = this.f3722c;
        int i8 = 0;
        if (bVar == null) {
            b bVar2 = this.f3720a;
            Log.e(bVar2.f3679a, bVar2.c("Attempt to send text message without a sink", new Object[0]));
            return;
        }
        I i9 = (I) bVar.f8650H;
        if (i9 == null) {
            throw new IllegalStateException("Device is not connected");
        }
        F f8 = (F) i9;
        String str2 = this.f3721b;
        a.c(str2);
        if (TextUtils.isEmpty(str)) {
            throw new IllegalArgumentException("The message payload cannot be null or empty");
        }
        if (str.length() > 524288) {
            b bVar3 = F.f1441w;
            Log.w(bVar3.f3679a, bVar3.c("Message send failed. Message exceeds maximum size", new Object[0]));
            throw new IllegalArgumentException("Message exceeds maximum size524288");
        }
        K3.r rVarA = AbstractC0245s.a();
        rVarA.f4570c = new B(f8, str2, str, i8);
        rVarA.f4568a = 8405;
        p052g4.h hVarDoWrite = f8.doWrite(rVarA.a());
        p046f6.c cVar = new p046f6.c(bVar, 6, j8);
        p052g4.r rVar = (p052g4.r) hVarDoWrite;
        rVar.getClass();
        rVar.b(p052g4.j.f25346a, cVar);
    }
}
