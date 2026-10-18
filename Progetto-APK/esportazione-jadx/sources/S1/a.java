package S1;

import android.os.Bundle;
import com.google.protobuf.U2;
import java.lang.reflect.Constructor;
import java.util.ArrayList;
import java.util.Iterator;
import p000a.r;
import p032e0.EnumC2981i;
import p032e0.InterfaceC2983k;
import p032e0.m;
import z4.q0;

/* JADX INFO: loaded from: classes.dex */
public final class a implements InterfaceC2983k {

    /* JADX INFO: renamed from: G, reason: collision with root package name */
    public final g f6387G;

    public a(g gVar) {
        q0.h(gVar, "owner");
        this.f6387G = gVar;
    }

    @Override // p032e0.InterfaceC2983k
    public final void b(m mVar, EnumC2981i enumC2981i) {
        if (enumC2981i != EnumC2981i.ON_CREATE) {
            throw new AssertionError("Next event must be ON_CREATE");
        }
        mVar.h().c(this);
        Bundle bundleA = this.f6387G.d().a("androidx.savedstate.Restarter");
        if (bundleA == null) {
            return;
        }
        ArrayList<String> stringArrayList = bundleA.getStringArrayList("classes_to_restore");
        if (stringArrayList == null) {
            throw new IllegalStateException("Bundle with restored state for the component \"androidx.savedstate.Restarter\" must contain list of strings by the key \"classes_to_restore\"");
        }
        Iterator<String> it = stringArrayList.iterator();
        if (it.hasNext()) {
            String next = it.next();
            try {
                Class<? extends U> clsAsSubclass = Class.forName(next, false, a.class.getClassLoader()).asSubclass(c.class);
                q0.g(clsAsSubclass, "{\n                Class.…class.java)\n            }");
                try {
                    Constructor declaredConstructor = clsAsSubclass.getDeclaredConstructor(new Class[0]);
                    declaredConstructor.setAccessible(true);
                    try {
                        Object objNewInstance = declaredConstructor.newInstance(new Object[0]);
                        q0.g(objNewInstance, "{\n                constr…wInstance()\n            }");
                        U2.u(objNewInstance);
                        throw null;
                    } catch (Exception e8) {
                        throw new RuntimeException(p148t.a.c("Failed to instantiate ", next), e8);
                    }
                } catch (NoSuchMethodException e9) {
                    throw new IllegalStateException("Class " + clsAsSubclass.getSimpleName() + " must have default constructor in order to be automatically recreated", e9);
                }
            } catch (ClassNotFoundException e10) {
                throw new RuntimeException(r.g("Class ", next, " wasn't found"), e10);
            }
        }
    }
}
