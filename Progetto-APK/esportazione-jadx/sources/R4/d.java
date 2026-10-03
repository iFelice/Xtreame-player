package R4;

import P4.f;
import P4.g;
import java.util.Date;
import java.util.HashMap;

/* JADX INFO: loaded from: classes.dex */
public final class d implements Q4.a {

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public static final b f6294f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public static final b f6295g;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final HashMap f6297a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final HashMap f6298b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final a f6299c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public boolean f6300d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public static final a f6293e = new a(0);

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public static final c f6296h = new c();

    /* JADX WARN: Type inference failed for: r0v1, types: [R4.b] */
    /* JADX WARN: Type inference failed for: r0v2, types: [R4.b] */
    static {
        final int i8 = 0;
        f6294f = new f() { // from class: R4.b
            @Override // P4.a
            public final void a(Object obj, Object obj2) {
                switch (i8) {
                    case 0:
                        ((g) obj2).c((String) obj);
                        break;
                    default:
                        ((g) obj2).d(((Boolean) obj).booleanValue());
                        break;
                }
            }
        };
        final int i9 = 1;
        f6295g = new f() { // from class: R4.b
            @Override // P4.a
            public final void a(Object obj, Object obj2) {
                switch (i9) {
                    case 0:
                        ((g) obj2).c((String) obj);
                        break;
                    default:
                        ((g) obj2).d(((Boolean) obj).booleanValue());
                        break;
                }
            }
        };
    }

    public d() {
        HashMap map = new HashMap();
        this.f6297a = map;
        HashMap map2 = new HashMap();
        this.f6298b = map2;
        this.f6299c = f6293e;
        this.f6300d = false;
        map2.put(String.class, f6294f);
        map.remove(String.class);
        map2.put(Boolean.class, f6295g);
        map.remove(Boolean.class);
        map2.put(Date.class, f6296h);
        map.remove(Date.class);
    }

    public final Q4.a a(Class cls, P4.d dVar) {
        this.f6297a.put(cls, dVar);
        this.f6298b.remove(cls);
        return this;
    }
}
