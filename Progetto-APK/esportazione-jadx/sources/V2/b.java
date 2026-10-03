package V2;

import android.content.Context;
import p000a.r;

/* JADX INFO: loaded from: classes.dex */
public final class b extends c {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final Context f7089a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final p028d3.a f7090b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final p028d3.a f7091c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final String f7092d;

    public b(Context context, p028d3.a aVar, p028d3.a aVar2, String str) {
        if (context == null) {
            throw new NullPointerException("Null applicationContext");
        }
        this.f7089a = context;
        if (aVar == null) {
            throw new NullPointerException("Null wallClock");
        }
        this.f7090b = aVar;
        if (aVar2 == null) {
            throw new NullPointerException("Null monotonicClock");
        }
        this.f7091c = aVar2;
        if (str == null) {
            throw new NullPointerException("Null backendName");
        }
        this.f7092d = str;
    }

    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof c)) {
            return false;
        }
        c cVar = (c) obj;
        if (this.f7089a.equals(((b) cVar).f7089a)) {
            b bVar = (b) cVar;
            if (this.f7090b.equals(bVar.f7090b) && this.f7091c.equals(bVar.f7091c) && this.f7092d.equals(bVar.f7092d)) {
                return true;
            }
        }
        return false;
    }

    public final int hashCode() {
        return ((((((this.f7089a.hashCode() ^ 1000003) * 1000003) ^ this.f7090b.hashCode()) * 1000003) ^ this.f7091c.hashCode()) * 1000003) ^ this.f7092d.hashCode();
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder("CreationContext{applicationContext=");
        sb.append(this.f7089a);
        sb.append(", wallClock=");
        sb.append(this.f7090b);
        sb.append(", monotonicClock=");
        sb.append(this.f7091c);
        sb.append(", backendName=");
        return r.j(sb, this.f7092d, "}");
    }
}
