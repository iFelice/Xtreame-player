package y2;

import java.nio.ByteBuffer;
import java.security.MessageDigest;
import java.util.Queue;

/* JADX INFO: loaded from: classes.dex */
public final class F implements p173w2.i {

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public static final P2.k f31256j = new P2.k(50);

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final p196z2.h f31257b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final p173w2.i f31258c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final p173w2.i f31259d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final int f31260e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final int f31261f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public final Class f31262g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final p173w2.l f31263h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final p173w2.p f31264i;

    public F(p196z2.h hVar, p173w2.i iVar, p173w2.i iVar2, int i8, int i9, p173w2.p pVar, Class cls, p173w2.l lVar) {
        this.f31257b = hVar;
        this.f31258c = iVar;
        this.f31259d = iVar2;
        this.f31260e = i8;
        this.f31261f = i9;
        this.f31264i = pVar;
        this.f31262g = cls;
        this.f31263h = lVar;
    }

    /* JADX WARN: Type inference fix 'apply assigned field type' failed
    java.lang.UnsupportedOperationException: ArgType.getObject(), call class: class jadx.core.dex.instructions.args.ArgType$ArrayArg
    	at jadx.core.dex.instructions.args.ArgType.getObject(ArgType.java:596)
    	at jadx.core.dex.attributes.nodes.ClassTypeVarsAttr.getTypeVarsMapFor(ClassTypeVarsAttr.java:35)
    	at jadx.core.dex.nodes.utils.TypeUtils.replaceClassGenerics(TypeUtils.java:177)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.insertExplicitUseCast(FixTypesVisitor.java:397)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.tryFieldTypeWithNewCasts(FixTypesVisitor.java:359)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.applyFieldType(FixTypesVisitor.java:309)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.visit(FixTypesVisitor.java:94)
     */
    @Override // p173w2.i
    public final void b(MessageDigest messageDigest) {
        Object objF;
        p196z2.h hVar = this.f31257b;
        synchronized (hVar) {
            p196z2.c cVar = hVar.f31767b;
            p196z2.k kVarN = (p196z2.k) ((Queue) cVar.f10616G).poll();
            if (kVarN == null) {
                kVarN = cVar.n();
            }
            p196z2.g gVar = (p196z2.g) kVarN;
            gVar.f31764b = 8;
            gVar.f31765c = byte[].class;
            objF = hVar.f(gVar, byte[].class);
        }
        byte[] bArr = (byte[]) objF;
        ByteBuffer.wrap(bArr).putInt(this.f31260e).putInt(this.f31261f).array();
        this.f31259d.b(messageDigest);
        this.f31258c.b(messageDigest);
        messageDigest.update(bArr);
        p173w2.p pVar = this.f31264i;
        if (pVar != null) {
            pVar.b(messageDigest);
        }
        this.f31263h.b(messageDigest);
        P2.k kVar = f31256j;
        Class cls = this.f31262g;
        byte[] bytes = (byte[]) kVar.a(cls);
        if (bytes == null) {
            bytes = cls.getName().getBytes(p173w2.i.f30994a);
            kVar.d(cls, bytes);
        }
        messageDigest.update(bytes);
        this.f31257b.h(bArr);
    }

    @Override // p173w2.i
    public final boolean equals(Object obj) {
        if (!(obj instanceof F)) {
            return false;
        }
        F f8 = (F) obj;
        return this.f31261f == f8.f31261f && this.f31260e == f8.f31260e && P2.o.b(this.f31264i, f8.f31264i) && this.f31262g.equals(f8.f31262g) && this.f31258c.equals(f8.f31258c) && this.f31259d.equals(f8.f31259d) && this.f31263h.equals(f8.f31263h);
    }

    @Override // p173w2.i
    public final int hashCode() {
        int iHashCode = ((((this.f31259d.hashCode() + (this.f31258c.hashCode() * 31)) * 31) + this.f31260e) * 31) + this.f31261f;
        p173w2.p pVar = this.f31264i;
        if (pVar != null) {
            iHashCode = (iHashCode * 31) + pVar.hashCode();
        }
        return this.f31263h.f31000b.hashCode() + ((this.f31262g.hashCode() + (iHashCode * 31)) * 31);
    }

    public final String toString() {
        return "ResourceCacheKey{sourceKey=" + this.f31258c + ", signature=" + this.f31259d + ", width=" + this.f31260e + ", height=" + this.f31261f + ", decodedResourceClass=" + this.f31262g + ", transformation='" + this.f31264i + "', options=" + this.f31263h + '}';
    }
}
