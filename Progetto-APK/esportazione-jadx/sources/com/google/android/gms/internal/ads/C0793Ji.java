package com.google.android.gms.internal.ads;

import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import org.json.JSONObject;
import p090l3.C3099q;

/* JADX INFO: renamed from: com.google.android.gms.internal.ads.Ji, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class C0793Ji implements Dw, InterfaceC1195dC {

    /* JADX INFO: renamed from: G, reason: collision with root package name */
    public final /* synthetic */ int f14187G;

    /* JADX INFO: renamed from: H, reason: collision with root package name */
    public final /* synthetic */ C0823Li f14188H;

    public /* synthetic */ C0793Ji(C0823Li c0823Li, int i8) {
        this.f14187G = i8;
        this.f14188H = c0823Li;
    }

    @Override // com.google.android.gms.internal.ads.InterfaceC1195dC
    public final void zza(Throwable th) {
        int i8 = this.f14187G;
        C0823Li c0823Li = this.f14188H;
        switch (i8) {
            case 1:
                c0823Li.f14536f.p(false);
                break;
            default:
                c0823Li.f14536f.m(false);
                break;
        }
    }

    @Override // com.google.android.gms.internal.ads.InterfaceC1195dC
    /* JADX INFO: renamed from: zzb */
    public final /* bridge */ /* synthetic */ void mo3zzb(Object obj) {
        int i8 = this.f14187G;
        C0823Li c0823Li = this.f14188H;
        switch (i8) {
            case 1:
                c0823Li.f14536f.p(true);
                break;
            default:
                c0823Li.f14536f.m(true);
                break;
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r2v5, types: [int] */
    /* JADX WARN: Type inference failed for: r2v6 */
    /* JADX WARN: Type inference failed for: r2v8 */
    /* JADX WARN: Type inference failed for: r3v8, types: [com.google.android.gms.internal.ads.Kd] */
    /* JADX WARN: Type inference fix 'apply assigned field type' failed
    java.lang.UnsupportedOperationException: ArgType.getObject(), call class: class jadx.core.dex.instructions.args.ArgType$UnknownArg
    	at jadx.core.dex.instructions.args.ArgType.getObject(ArgType.java:596)
    	at jadx.core.dex.attributes.nodes.ClassTypeVarsAttr.getTypeVarsMapFor(ClassTypeVarsAttr.java:35)
    	at jadx.core.dex.nodes.utils.TypeUtils.replaceClassGenerics(TypeUtils.java:177)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.insertExplicitUseCast(FixTypesVisitor.java:397)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.tryFieldTypeWithNewCasts(FixTypesVisitor.java:359)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.applyFieldType(FixTypesVisitor.java:309)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.visit(FixTypesVisitor.java:94)
     */
    @Override // com.google.android.gms.internal.ads.Dw
    public final Object zza(Object obj) {
        Tv tv = (Tv) obj;
        C1112bh c1112bh = this.f14188H.f14534d;
        c1112bh.getClass();
        for (Sv sv : (List) tv.f16755b.f21884J) {
            if (c1112bh.f18062a.containsKey(sv.f16547a)) {
                InterfaceC1266eh interfaceC1266eh = (InterfaceC1266eh) c1112bh.f18062a.get(sv.f16547a);
                JSONObject jSONObject = sv.f16548b;
                C1524jh c1524jh = (C1524jh) interfaceC1266eh;
                switch (c1524jh.f19475a) {
                    case 0:
                        if (jSONObject == null) {
                            continue;
                        } else if (((Boolean) C3099q.f26624d.f26627c.a(Q7.x8)).booleanValue()) {
                            C1895qo c1895qo = (C1895qo) c1524jh.f19476b;
                            synchronized (c1895qo) {
                                c1895qo.f20632p = jSONObject;
                            }
                        } else {
                            continue;
                        }
                        break;
                    default:
                        ((C0818Ld) c1524jh.f19476b).f14515b.a(jSONObject.optBoolean("npa_reset") ? -1 : jSONObject.optBoolean("npa"), jSONObject.optLong("timestamp"));
                        break;
                }
            } else if (c1112bh.f18063b.containsKey(sv.f16547a)) {
                InterfaceC1215dh interfaceC1215dh = (InterfaceC1215dh) c1112bh.f18063b.get(sv.f16547a);
                JSONObject jSONObject2 = sv.f16548b;
                HashMap map = new HashMap();
                Iterator<String> itKeys = jSONObject2.keys();
                while (itKeys.hasNext()) {
                    String next = itKeys.next();
                    String strOptString = jSONObject2.optString(next);
                    if (strOptString != null) {
                        map.put(next, strOptString);
                    }
                }
                interfaceC1215dh.a(map);
            }
        }
        return tv;
    }
}
