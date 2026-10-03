package com.google.ads.interactivemedia.v3.internal;

import A0.O;
import java.lang.reflect.InvocationTargetException;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Iterator;
import java.util.ServiceConfigurationError;
import java.util.ServiceLoader;
import java.util.logging.Level;
import java.util.logging.Logger;

/* JADX INFO: loaded from: classes.dex */
public abstract class zzads {
    public static zzadk zzb(Class cls) {
        String strB;
        ClassLoader classLoader = zzads.class.getClassLoader();
        if (cls.equals(zzadk.class)) {
            strB = "com.google.protobuf.BlazeGeneratedExtensionRegistryLiteLoader";
        } else {
            if (!cls.getPackage().equals(zzads.class.getPackage())) {
                throw new IllegalArgumentException(cls.getName());
            }
            strB = O.B(cls.getPackage().getName(), ".BlazeGenerated", cls.getSimpleName(), "Loader");
        }
        try {
            try {
                try {
                    try {
                        return (zzadk) cls.cast(((zzads) Class.forName(strB, true, classLoader).getConstructor(new Class[0]).newInstance(new Object[0])).zza());
                    } catch (IllegalAccessException e8) {
                        throw new IllegalStateException(e8);
                    } catch (NoSuchMethodException e9) {
                        throw new IllegalStateException(e9);
                    }
                } catch (InstantiationException e10) {
                    throw new IllegalStateException(e10);
                }
            } catch (InvocationTargetException e11) {
                throw new IllegalStateException(e11);
            }
        } catch (ClassNotFoundException unused) {
            Iterator it = ServiceLoader.load(zzads.class, classLoader).iterator();
            ArrayList arrayList = new ArrayList();
            while (it.hasNext()) {
                try {
                    arrayList.add((zzadk) cls.cast(((zzads) it.next()).zza()));
                } catch (ServiceConfigurationError e12) {
                    Logger.getLogger(zzadf.class.getName()).logp(Level.SEVERE, "com.google.protobuf.GeneratedExtensionRegistryLoader", "load", "Unable to load ".concat(cls.getSimpleName()), (Throwable) e12);
                }
            }
            if (arrayList.size() == 1) {
                return (zzadk) arrayList.get(0);
            }
            if (arrayList.size() == 0) {
                return null;
            }
            try {
                return (zzadk) cls.getMethod("combine", Collection.class).invoke(null, arrayList);
            } catch (IllegalAccessException e13) {
                throw new IllegalStateException(e13);
            } catch (NoSuchMethodException e14) {
                throw new IllegalStateException(e14);
            } catch (InvocationTargetException e15) {
                throw new IllegalStateException(e15);
            }
        }
    }

    public abstract zzadk zza();
}
