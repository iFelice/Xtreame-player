package com.google.ads.interactivemedia.v3.internal;

import android.content.Context;
import com.google.ads.interactivemedia.v3.api.signals.SecureSignalsAdapter;
import com.google.android.gms.internal.ads.Cw;
import com.google.protobuf.U2;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.TimeUnit;
import p052g4.b;
import p052g4.e;
import p052g4.h;
import p052g4.i;
import p052g4.j;
import p052g4.r;

/* JADX INFO: loaded from: classes.dex */
public final class zzgd {
    private final List zza = new ArrayList(0);
    private final i zzb = new i();
    private final i zzc = new i();
    private final Context zzd;
    private final ExecutorService zze;
    private final zzfd zzf;
    private Integer zzg;

    public zzgd(Context context, ExecutorService executorService, zzfd zzfdVar) {
        this.zzd = context;
        this.zze = executorService;
        this.zzf = zzfdVar;
    }

    public static /* synthetic */ h zza(zzgd zzgdVar, h hVar) {
        final List list = (List) hVar.f();
        return Cw.o(list).d(zzgdVar.zze, new b() { // from class: com.google.ads.interactivemedia.v3.internal.zzfw
            @Override // p052g4.b
            public final Object then(h hVar2) {
                return list;
            }
        });
    }

    public static /* synthetic */ Void zzd(zzgd zzgdVar, h hVar) {
        zzgdVar.zzc.d(zzgdVar.zza);
        return null;
    }

    private final void zzi(com.google.ads.interactivemedia.v3.impl.data.zzbq zzbqVar, Exception exc) {
        this.zzf.zzg(com.google.ads.interactivemedia.v3.impl.data.zzbp.NATIVE_ESP, zzbqVar, exc);
    }

    private final void zzj(zzft zzftVar) {
        this.zza.remove(zzftVar);
    }

    private static final Exception zzk(zzft zzftVar, Exception exc) {
        return new Exception(U2.m("Exception with SecureSignalsAdapter ", zzftVar.zze(), ":", zzftVar.zzf()), exc);
    }

    public final h zzb() {
        this.zzb.f25345a.d(this.zze, new b() { // from class: com.google.ads.interactivemedia.v3.internal.zzgb
            @Override // p052g4.b
            public final Object then(h hVar) {
                List<zzft> list = (List) hVar.f();
                ArrayList arrayList = new ArrayList(list.size());
                for (final zzft zzftVar : list) {
                    final zzgd zzgdVar = this.zza;
                    h hVarZzc = zzftVar.zzc();
                    e eVar = new e() { // from class: com.google.ads.interactivemedia.v3.internal.zzfv
                        @Override // p052g4.e
                        public final void onFailure(Exception exc) {
                            zzgdVar.zzh(zzftVar, exc);
                        }
                    };
                    r rVar = (r) hVarZzc;
                    rVar.getClass();
                    rVar.b(j.f25346a, eVar);
                    arrayList.add(hVarZzc);
                }
                return arrayList;
            }
        }).i(this.zze, new zzfy(this)).d(this.zze, new zzfz(this)).d(this.zze, new b() { // from class: com.google.ads.interactivemedia.v3.internal.zzgc
            @Override // p052g4.b
            public final Object then(h hVar) {
                zzgd.zzd(this.zza, hVar);
                return null;
            }
        });
        return this.zzc.f25345a;
    }

    public final h zzc(List list, Integer num) {
        if (num.intValue() == 0) {
            this.zzb.c(new Exception("No adapters to load"));
            return this.zzb.f25345a;
        }
        this.zzg = num;
        Iterator it = list.iterator();
        while (it.hasNext()) {
            String str = (String) it.next();
            zzft zzftVar = null;
            try {
                Class<?> cls = Class.forName(str, false, zzgd.class.getClassLoader());
                Class<?>[] interfaces = cls.getInterfaces();
                String name = SecureSignalsAdapter.class.getName();
                for (Class<?> cls2 : interfaces) {
                    if (cls2.getName().equals(name)) {
                        zzftVar = new zzft((SecureSignalsAdapter) cls.getDeclaredConstructor(new Class[0]).newInstance(new Object[0]), str, this.zzd);
                        break;
                    }
                }
            } catch (Throwable unused) {
            }
            if (zzftVar != null) {
                try {
                    this.zza.add(zzftVar);
                } catch (Exception e8) {
                    zzi(com.google.ads.interactivemedia.v3.impl.data.zzbq.LOAD_ADAPTER, new Exception("Exception with SecureSignalsAdapter ".concat(String.valueOf(str)), e8));
                }
            }
        }
        this.zzb.d(this.zza);
        return this.zzb.f25345a;
    }

    public final List zze() {
        r rVarQ;
        try {
            r rVarD = this.zzc.f25345a.d(this.zze, new b() { // from class: com.google.ads.interactivemedia.v3.internal.zzfx
                @Override // p052g4.b
                public final Object then(h hVar) {
                    List<zzft> list = (List) hVar.f();
                    ArrayList arrayList = new ArrayList(list.size());
                    for (final zzft zzftVar : list) {
                        final zzgd zzgdVar = this.zza;
                        h hVarZzb = zzftVar.zzb();
                        e eVar = new e() { // from class: com.google.ads.interactivemedia.v3.internal.zzfu
                            @Override // p052g4.e
                            public final void onFailure(Exception exc) {
                                zzgdVar.zzg(zzftVar, exc);
                            }
                        };
                        r rVar = (r) hVarZzb;
                        rVar.getClass();
                        rVar.b(j.f25346a, eVar);
                        arrayList.add(rVar);
                    }
                    return arrayList;
                }
            }).i(this.zze, new zzfy(this)).d(this.zze, new zzfz(this));
            Integer num = this.zzg;
            if (num == null) {
                rVarQ = Cw.k(new ArrayList());
            } else {
                rVarQ = Cw.q(rVarD, num.intValue(), TimeUnit.MILLISECONDS);
                e eVar = new e() { // from class: com.google.ads.interactivemedia.v3.internal.zzga
                    @Override // p052g4.e
                    public final void onFailure(Exception exc) {
                        this.zza.zzf(exc);
                    }
                };
                rVarQ.getClass();
                rVarQ.b(j.f25346a, eVar);
            }
            return (List) Cw.a(rVarQ);
        } catch (InterruptedException | ExecutionException unused) {
            return new ArrayList();
        }
    }

    public final /* synthetic */ void zzf(Exception exc) {
        zzi(com.google.ads.interactivemedia.v3.impl.data.zzbq.COLLECT_SIGNALS, exc);
    }

    public final /* synthetic */ void zzg(zzft zzftVar, Exception exc) {
        zzj(zzftVar);
        zzi(com.google.ads.interactivemedia.v3.impl.data.zzbq.COLLECT_SIGNALS, zzk(zzftVar, exc));
    }

    public final /* synthetic */ void zzh(zzft zzftVar, Exception exc) {
        zzj(zzftVar);
        zzi(com.google.ads.interactivemedia.v3.impl.data.zzbq.INIT, zzk(zzftVar, exc));
    }
}
