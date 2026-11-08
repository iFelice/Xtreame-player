package com.google.android.gms.internal.ads;

import java.security.GeneralSecurityException;
import java.util.concurrent.ConcurrentHashMap;
import java.util.logging.Level;
import java.util.logging.Logger;

/* JADX INFO: loaded from: classes.dex */
public final class XD {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static final Logger f17391c = Logger.getLogger(XD.class.getName());

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public static final XD f17392d = new XD();

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final ConcurrentHashMap f17393a = new ConcurrentHashMap();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final ConcurrentHashMap f17394b = new ConcurrentHashMap();

    public final synchronized void a(C1145cE c1145cE) {
        b(c1145cE, 1);
    }

    public final synchronized void b(C1145cE c1145cE, int i8) {
        if (!Cw.f0(i8)) {
            throw new GeneralSecurityException("Cannot register key manager: FIPS compatibility insufficient");
        }
        d(c1145cE);
    }

    public final synchronized C1145cE c(String str) {
        if (!this.f17393a.containsKey(str)) {
            throw new GeneralSecurityException("No key manager found for key type ".concat(String.valueOf(str)));
        }
        return (C1145cE) this.f17393a.get(str);
    }

    public final synchronized void d(C1145cE c1145cE) {
        try {
            String str = c1145cE.f18203a;
            if (this.f17394b.containsKey(str) && !((Boolean) this.f17394b.get(str)).booleanValue()) {
                throw new GeneralSecurityException("New keys are already disallowed for key type ".concat(str));
            }
            if (((C1145cE) this.f17393a.get(str)) != null && !C1145cE.class.equals(C1145cE.class)) {
                f17391c.logp(Level.WARNING, "com.google.crypto.tink.internal.KeyManagerRegistry", "insertKeyManager", "Attempted overwrite of a registered key manager for key type ".concat(str));
                throw new GeneralSecurityException("typeUrl (" + str + ") is already registered with " + C1145cE.class.getName() + ", cannot be re-registered with " + C1145cE.class.getName());
            }
            this.f17393a.putIfAbsent(str, c1145cE);
            this.f17394b.put(str, Boolean.TRUE);
        } catch (Throwable th) {
            throw th;
        }
    }
}
