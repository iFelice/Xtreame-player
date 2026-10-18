package G;

import J6.r;
import android.content.Context;
import android.content.res.Resources;
import android.graphics.Typeface;
import android.os.Build;
import android.os.Handler;
import android.os.Looper;
import android.os.Trace;
import android.util.Log;
import java.lang.reflect.Method;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import java.util.Objects;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.Executor;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.TimeoutException;
import p039f.S;
import p132r.l;
import p132r.m;

/* JADX INFO: loaded from: classes.dex */
public abstract class e {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final S f3283a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static final l f3284b;

    /* JADX WARN: Code duplicated, block: B:18:0x0046  */
    static {
        r.b("TypefaceCompat static init");
        int i8 = Build.VERSION.SDK_INT;
        if (i8 >= 29) {
            f3283a = new j(9);
        } else if (i8 >= 28) {
            f3283a = new i();
        } else if (i8 >= 26) {
            f3283a = new h();
        } else if (i8 < 24) {
            f3283a = new f();
        } else {
            Method method = g.f3292K;
            if (method == null) {
                Log.w("TypefaceCompatApi24Impl", "Unable to collect necessary private methods.Fallback to legacy implementation.");
            }
            if (method != null) {
                f3283a = new g(9);
            } else {
                f3283a = new f();
            }
        }
        f3284b = new l(16);
        Trace.endSection();
    }

    /* JADX WARN: Code duplicated, block: B:14:0x0030  */
    public static Typeface a(Context context, F.e eVar, Resources resources, int i8, String str, int i9, int i10, p016c.g gVar, boolean z7) {
        Typeface typefaceG;
        Typeface typefaceCreate;
        List listUnmodifiableList;
        Typeface typeface;
        int i11 = 2;
        int i12 = 0;
        int i13 = 1;
        if (eVar instanceof F.h) {
            F.h hVar = (F.h) eVar;
            String str2 = hVar.f2975e;
            typefaceG = null;
            if (str2 == null || str2.isEmpty()) {
                typefaceCreate = null;
            } else {
                typefaceCreate = Typeface.create(str2, 0);
                Typeface typefaceCreate2 = Typeface.create(Typeface.DEFAULT, 0);
                if (typefaceCreate == null || typefaceCreate.equals(typefaceCreate2)) {
                    typefaceCreate = null;
                }
            }
            if (typefaceCreate != null) {
                if (gVar != null) {
                    gVar.d(typefaceCreate);
                }
                return typefaceCreate;
            }
            boolean z8 = !z7 ? gVar != null : hVar.f2974d != 0;
            int i14 = z7 ? hVar.f2973c : -1;
            Handler handler = new Handler(Looper.getMainLooper());
            S s7 = new S(gVar);
            K.f fVar = hVar.f2972b;
            if (fVar != null) {
                Object[] objArr = {hVar.f2971a, fVar};
                ArrayList arrayList = new ArrayList(2);
                for (int i15 = 0; i15 < 2; i15++) {
                    Object obj = objArr[i15];
                    Objects.requireNonNull(obj);
                    arrayList.add(obj);
                }
                listUnmodifiableList = Collections.unmodifiableList(arrayList);
            } else {
                Object[] objArr2 = {hVar.f2971a};
                ArrayList arrayList2 = new ArrayList(1);
                Object obj2 = objArr2[0];
                Objects.requireNonNull(obj2);
                arrayList2.add(obj2);
                listUnmodifiableList = Collections.unmodifiableList(arrayList2);
            }
            List list = listUnmodifiableList;
            p096m2.c cVar = new p096m2.c(i11, s7, new J.e(1, handler));
            if (!z8) {
                String strA = K.j.a(i10, list);
                typeface = (Typeface) K.j.f4289a.b(strA);
                if (typeface != null) {
                    ((Executor) cVar.f27211I).execute(new K.a(cVar, (S) cVar.f27210H, typeface, i12));
                    typefaceG = typeface;
                } else {
                    K.h hVar2 = new K.h(cVar, i12);
                    synchronized (K.j.f4291c) {
                        try {
                            m mVar = K.j.f4292d;
                            ArrayList arrayList3 = (ArrayList) mVar.get(strA);
                            if (arrayList3 != null) {
                                arrayList3.add(hVar2);
                            } else {
                                ArrayList arrayList4 = new ArrayList();
                                arrayList4.add(hVar2);
                                mVar.put(strA, arrayList4);
                                K.j.f4290b.execute(new K.a(Looper.myLooper() == null ? new Handler(Looper.getMainLooper()) : new Handler(), new K.g(strA, context, list, i10, 1), new K.h(strA, i13), i11));
                            }
                        } catch (Throwable th) {
                            throw th;
                        }
                    }
                }
            } else {
                if (list.size() > 1) {
                    throw new IllegalArgumentException("Fallbacks with blocking fetches are not supported for performance reasons");
                }
                K.f fVar2 = (K.f) list.get(0);
                l lVar = K.j.f4289a;
                ArrayList arrayList5 = new ArrayList(1);
                Object obj3 = new Object[]{fVar2}[0];
                Objects.requireNonNull(obj3);
                arrayList5.add(obj3);
                String strA2 = K.j.a(i10, Collections.unmodifiableList(arrayList5));
                typeface = (Typeface) K.j.f4289a.b(strA2);
                if (typeface != null) {
                    ((Executor) cVar.f27211I).execute(new K.a(cVar, (S) cVar.f27210H, typeface, i12));
                    typefaceG = typeface;
                } else if (i14 == -1) {
                    Object[] objArr3 = {fVar2};
                    ArrayList arrayList6 = new ArrayList(1);
                    Object obj4 = objArr3[0];
                    Objects.requireNonNull(obj4);
                    arrayList6.add(obj4);
                    K.i iVarB = K.j.b(strA2, context, Collections.unmodifiableList(arrayList6), i10);
                    cVar.w(iVarB);
                    typefaceG = iVarB.f4287a;
                } else {
                    try {
                        try {
                            try {
                                try {
                                    K.i iVar = (K.i) K.j.f4290b.submit(new K.g(strA2, context, fVar2, i10, 0)).get(i14, TimeUnit.MILLISECONDS);
                                    cVar.w(iVar);
                                    typefaceG = iVar.f4287a;
                                } catch (ExecutionException e8) {
                                    throw new RuntimeException(e8);
                                }
                            } catch (InterruptedException e9) {
                                throw e9;
                            }
                        } catch (TimeoutException unused) {
                            throw new InterruptedException("timeout");
                        }
                    } catch (InterruptedException unused2) {
                        ((Executor) cVar.f27211I).execute(new p000a.g(cVar, (S) cVar.f27210H, -3, 4, 0));
                    }
                }
            }
        } else {
            typefaceG = f3283a.G(context, (F.f) eVar, resources, i10);
            if (gVar != null) {
                if (typefaceG != null) {
                    gVar.d(typefaceG);
                } else {
                    gVar.c();
                }
            }
        }
        if (typefaceG != null) {
            f3284b.d(b(resources, i8, str, i9, i10), typefaceG);
        }
        return typefaceG;
    }

    public static String b(Resources resources, int i8, String str, int i9, int i10) {
        return resources.getResourcePackageName(i8) + '-' + str + '-' + i9 + '-' + i8 + '-' + i10;
    }
}
