package com.google.android.gms.common.internal;

import K3.InterfaceC0232e;
import K3.InterfaceC0239l;
import android.accounts.Account;
import android.content.Context;
import android.os.Looper;
import com.google.android.gms.common.api.Scope;
import java.util.Collections;
import java.util.Iterator;
import java.util.Set;
import java.util.concurrent.Executor;

/* JADX INFO: renamed from: com.google.android.gms.common.internal.l, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes.dex */
public abstract class AbstractC0636l extends AbstractC0631g implements com.google.android.gms.common.api.e {
    private static volatile Executor zaa;
    private final C0633i zab;
    private final Set zac;
    private final Account zad;

    /* JADX WARN: Illegal instructions before constructor call */
    public AbstractC0636l(Context context, Looper looper, int i8, C0633i c0633i, InterfaceC0232e interfaceC0232e, InterfaceC0239l interfaceC0239l) {
        V vA = AbstractC0637m.a(context);
        J3.e eVar = J3.e.f4143d;
        com.bumptech.glide.c.h(interfaceC0232e);
        com.bumptech.glide.c.h(interfaceC0239l);
        super(context, looper, vA, eVar, i8, new A(interfaceC0232e), new B(interfaceC0239l), c0633i.f11850g);
        this.zab = c0633i;
        this.zad = c0633i.f11844a;
        Set<Scope> set = c0633i.f11846c;
        Set<Scope> setValidateScopes = validateScopes(set);
        Iterator<Scope> it = setValidateScopes.iterator();
        while (it.hasNext()) {
            if (!set.contains(it.next())) {
                throw new IllegalStateException("Expanding scopes is not permitted, use implied scopes instead");
            }
        }
        this.zac = setValidateScopes;
    }

    @Override // com.google.android.gms.common.internal.AbstractC0631g
    public final Account getAccount() {
        return this.zad;
    }

    @Override // com.google.android.gms.common.internal.AbstractC0631g
    public Executor getBindServiceExecutor() {
        return null;
    }

    public final C0633i getClientSettings() {
        return this.zab;
    }

    public J3.d[] getRequiredFeatures() {
        return new J3.d[0];
    }

    @Override // com.google.android.gms.common.internal.AbstractC0631g
    public final Set<Scope> getScopes() {
        return this.zac;
    }

    @Override // com.google.android.gms.common.api.e
    public Set<Scope> getScopesForConnectionlessNonSignIn() {
        return requiresSignIn() ? this.zac : Collections.emptySet();
    }

    public Set<Scope> validateScopes(Set<Scope> set) {
        return set;
    }
}
