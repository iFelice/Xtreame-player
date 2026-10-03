package p032e0;

import D6.c;
import D6.l;
import F2.G;
import java.util.HashMap;
import p040f0.a;
import p040f0.b;
import p096m2.u;
import z4.q0;

/* JADX INFO: loaded from: classes.dex */
public final class J {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final u f24729a;

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public J(K k8, G g8) {
        this(k8, g8, a.f25132b);
        q0.h(k8, "store");
    }

    public final G a(Class cls) {
        String str;
        c cVarA = l.a(cls);
        Class cls2 = cVarA.f2430a;
        q0.h(cls2, "jClass");
        String canonicalName = null;
        if (!cls2.isAnonymousClass() && !cls2.isLocalClass()) {
            boolean zIsArray = cls2.isArray();
            HashMap map = c.f2429c;
            if (zIsArray) {
                Class<?> componentType = cls2.getComponentType();
                if (componentType.isPrimitive() && (str = (String) map.get(componentType.getName())) != null) {
                    canonicalName = str.concat("Array");
                }
                if (canonicalName == null) {
                    canonicalName = "kotlin.Array";
                }
            } else {
                canonicalName = (String) map.get(cls2.getName());
                if (canonicalName == null) {
                    canonicalName = cls2.getCanonicalName();
                }
            }
        }
        if (canonicalName != null) {
            return this.f24729a.D(cVarA, "androidx.lifecycle.ViewModelProvider.DefaultKey:".concat(canonicalName));
        }
        throw new IllegalArgumentException("Local and anonymous classes can not be ViewModels".toString());
    }

    public J(K k8, G g8, b bVar) {
        q0.h(k8, "store");
        q0.h(bVar, "defaultCreationExtras");
        this.f24729a = new u(k8, g8, bVar);
    }
}
