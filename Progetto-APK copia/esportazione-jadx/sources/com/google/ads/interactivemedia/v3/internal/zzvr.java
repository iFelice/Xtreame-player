package com.google.ads.interactivemedia.v3.internal;

import A0.O;
import java.io.EOFException;
import java.io.IOException;
import java.io.StringReader;
import java.io.StringWriter;
import java.io.Writer;
import java.lang.reflect.Type;
import java.math.BigDecimal;
import java.math.BigInteger;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Objects;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.ConcurrentMap;
import java.util.concurrent.atomic.AtomicLong;
import java.util.concurrent.atomic.AtomicLongArray;

/* JADX INFO: loaded from: classes.dex */
public final class zzvr {
    static final zzvl zza = zzvl.zza;
    static final int zzd = 1;
    static final int zze = 1;
    static final int zzf = 2;
    public static final /* synthetic */ int zzg = 0;
    final List zzb;
    final zzvl zzc;
    private final ThreadLocal zzh;
    private final ConcurrentMap zzi;
    private final zzxl zzj;
    private final zzyx zzk;

    public zzvr() {
        this(zzxn.zza, zzd, Collections.emptyMap(), false, false, false, true, zza, null, false, true, 1, null, 2, 2, Collections.emptyList(), Collections.emptyList(), Collections.emptyList(), zze, zzf, Collections.emptyList());
    }

    public static void zzg(double d6) {
        if (Double.isNaN(d6) || Double.isInfinite(d6)) {
            throw new IllegalArgumentException(d6 + " is not a valid double value as per JSON specification. To override this behavior, use GsonBuilder.serializeSpecialFloatingPointValues() method.");
        }
    }

    public static final void zzi(zzvw zzvwVar, zzace zzaceVar) {
        zzwg zzwgVarZzn = zzaceVar.zzn();
        boolean zZzt = zzaceVar.zzt();
        boolean zZzs = zzaceVar.zzs();
        zzaceVar.zzp(true);
        zzaceVar.zzq(false);
        if (zzaceVar.zzn() == zzwg.LEGACY_STRICT) {
            zzaceVar.zzr(zzwg.LENIENT);
        }
        try {
            try {
                try {
                    zzabh.zzV.write(zzaceVar, zzvwVar);
                    zzaceVar.zzr(zzwgVarZzn);
                    zzaceVar.zzp(zZzt);
                    zzaceVar.zzq(zZzs);
                } catch (AssertionError e8) {
                    throw new AssertionError("AssertionError (GSON 2.10.1): " + e8.getMessage(), e8);
                }
            } catch (IOException e9) {
                throw new zzvx(e9);
            }
        } catch (Throwable th) {
            zzaceVar.zzr(zzwgVarZzn);
            zzaceVar.zzp(zZzt);
            zzaceVar.zzq(zZzs);
            throw th;
        }
    }

    public final String toString() {
        return O.C("{serializeNulls:false,factories:", String.valueOf(this.zzb), ",instanceCreators:", this.zzj.toString(), "}");
    }

    public final zzwj zza(zzaca zzacaVar) {
        boolean z7;
        Objects.requireNonNull(zzacaVar, "type must not be null");
        zzwj zzwjVar = (zzwj) this.zzi.get(zzacaVar);
        if (zzwjVar != null) {
            return zzwjVar;
        }
        Map map = (Map) this.zzh.get();
        boolean z8 = false;
        if (map == null) {
            map = new HashMap();
            this.zzh.set(map);
            z7 = true;
        } else {
            zzwj zzwjVar2 = (zzwj) map.get(zzacaVar);
            if (zzwjVar2 != null) {
                return zzwjVar2;
            }
            z7 = false;
        }
        try {
            zzvq zzvqVar = new zzvq();
            map.put(zzacaVar, zzvqVar);
            Iterator it = this.zzb.iterator();
            zzwj zzwjVarZza = null;
            while (it.hasNext()) {
                zzwjVarZza = ((zzwk) it.next()).zza(this, zzacaVar);
                if (zzwjVarZza != null) {
                    zzvqVar.zzb(zzwjVarZza);
                    map.put(zzacaVar, zzwjVarZza);
                    break;
                }
            }
            if (z7) {
                this.zzh.remove();
                z8 = true;
            }
            if (zzwjVarZza == null) {
                throw new IllegalArgumentException("GSON (2.10.1) cannot handle ".concat(String.valueOf(zzacaVar)));
            }
            if (z8) {
                this.zzi.putAll(map);
            }
            return zzwjVarZza;
        } catch (Throwable th) {
            if (z7) {
                this.zzh.remove();
            }
            throw th;
        }
    }

    public final zzwj zzb(zzwk zzwkVar, zzaca zzacaVar) {
        Objects.requireNonNull(zzwkVar, "skipPast must not be null");
        Objects.requireNonNull(zzacaVar, "type must not be null");
        if (this.zzk.zzc(zzacaVar, zzwkVar)) {
            zzwkVar = this.zzk;
        }
        boolean z7 = false;
        for (zzwk zzwkVar2 : this.zzb) {
            if (z7) {
                zzwj zzwjVarZza = zzwkVar2.zza(this, zzacaVar);
                if (zzwjVarZza != null) {
                    return zzwjVarZza;
                }
            } else if (zzwkVar2 == zzwkVar) {
                z7 = true;
            }
        }
        if (z7) {
            throw new IllegalArgumentException("GSON cannot serialize or deserialize ".concat(String.valueOf(zzacaVar)));
        }
        return zza(zzacaVar);
    }

    public final zzace zzc(Writer writer) {
        zzace zzaceVar = new zzace(writer);
        zzaceVar.zzo(this.zzc);
        zzaceVar.zzp(true);
        zzaceVar.zzr(zzwg.LEGACY_STRICT);
        zzaceVar.zzq(false);
        return zzaceVar;
    }

    public final Object zzd(zzacc zzaccVar, zzaca zzacaVar) {
        boolean z7;
        Object obj;
        zzwg zzwgVarZzt = zzaccVar.zzt();
        if (zzaccVar.zzt() == zzwg.LEGACY_STRICT) {
            zzaccVar.zzw(zzwg.LENIENT);
        }
        try {
            try {
                try {
                    try {
                        try {
                            zzaccVar.zzr();
                            z7 = false;
                            try {
                                obj = zza(zzacaVar).read(zzaccVar);
                            } catch (EOFException e8) {
                                e = e8;
                                if (!z7) {
                                    throw new zzwe(e);
                                }
                                obj = null;
                            }
                        } catch (EOFException e9) {
                            e = e9;
                            z7 = true;
                        }
                        zzaccVar.zzw(zzwgVarZzt);
                        return obj;
                    } catch (AssertionError e10) {
                        throw new AssertionError("AssertionError (GSON 2.10.1): " + e10.getMessage(), e10);
                    }
                } catch (IllegalStateException e11) {
                    throw new zzwe(e11);
                }
            } catch (IOException e12) {
                throw new zzwe(e12);
            }
        } catch (Throwable th) {
            zzaccVar.zzw(zzwgVarZzt);
            throw th;
        }
    }

    public final Object zze(String str, Class cls) {
        Object obj;
        zzaca zzacaVarZza = zzaca.zza(cls);
        if (str == null) {
            obj = null;
        } else {
            zzacc zzaccVar = new zzacc(new StringReader(str));
            zzaccVar.zzw(zzwg.LEGACY_STRICT);
            Object objZzd = zzd(zzaccVar, zzacaVarZza);
            if (objZzd != null) {
                try {
                    if (zzaccVar.zzr() != 10) {
                        throw new zzwe("JSON document was not fully consumed.");
                    }
                } catch (zzacf e8) {
                    throw new zzwe(e8);
                } catch (IOException e9) {
                    throw new zzvx(e9);
                }
            }
            obj = objZzd;
        }
        if (cls == Integer.TYPE) {
            cls = Integer.class;
        } else if (cls == Float.TYPE) {
            cls = Float.class;
        } else if (cls == Byte.TYPE) {
            cls = Byte.class;
        } else if (cls == Double.TYPE) {
            cls = Double.class;
        } else if (cls == Long.TYPE) {
            cls = Long.class;
        } else if (cls == Character.TYPE) {
            cls = Character.class;
        } else if (cls == Boolean.TYPE) {
            cls = Boolean.class;
        } else if (cls == Short.TYPE) {
            cls = Short.class;
        } else if (cls == Void.TYPE) {
            cls = Void.class;
        }
        return cls.cast(obj);
    }

    public final String zzf(Object obj) {
        if (obj == null) {
            zzvy zzvyVar = zzvy.zza;
            StringWriter stringWriter = new StringWriter();
            try {
                zzi(zzvyVar, zzc(stringWriter));
                return stringWriter.toString();
            } catch (IOException e8) {
                throw new zzvx(e8);
            }
        }
        StringWriter stringWriter2 = new StringWriter();
        try {
            zzh(obj, obj.getClass(), zzc(stringWriter2));
            return stringWriter2.toString();
        } catch (IOException e9) {
            throw new zzvx(e9);
        }
    }

    public final void zzh(Object obj, Type type, zzace zzaceVar) {
        zzwj zzwjVarZza = zza(zzaca.zzb(type));
        zzwg zzwgVarZzn = zzaceVar.zzn();
        if (zzaceVar.zzn() == zzwg.LEGACY_STRICT) {
            zzaceVar.zzr(zzwg.LENIENT);
        }
        boolean zZzt = zzaceVar.zzt();
        boolean zZzs = zzaceVar.zzs();
        zzaceVar.zzp(true);
        zzaceVar.zzq(false);
        try {
            try {
                zzwjVarZza.write(zzaceVar, obj);
                zzaceVar.zzr(zzwgVarZzn);
                zzaceVar.zzp(zZzt);
                zzaceVar.zzq(zZzs);
            } catch (IOException e8) {
                throw new zzvx(e8);
            } catch (AssertionError e9) {
                throw new AssertionError("AssertionError (GSON 2.10.1): " + e9.getMessage(), e9);
            }
        } catch (Throwable th) {
            zzaceVar.zzr(zzwgVarZzn);
            zzaceVar.zzp(zZzt);
            zzaceVar.zzq(zZzs);
            throw th;
        }
    }

    public zzvr(zzxn zzxnVar, int i8, Map map, boolean z7, boolean z8, boolean z9, boolean z10, zzvl zzvlVar, zzwg zzwgVar, boolean z11, boolean z12, int i9, String str, int i10, int i11, List list, List list2, List list3, int i12, int i13, List list4) {
        this.zzh = new ThreadLocal();
        this.zzi = new ConcurrentHashMap();
        zzxl zzxlVar = new zzxl(map, true, list4);
        this.zzj = zzxlVar;
        this.zzc = zzvlVar;
        ArrayList arrayList = new ArrayList();
        arrayList.add(zzabh.zzW);
        arrayList.add(zzzi.zza(i12));
        arrayList.add(zzxnVar);
        arrayList.addAll(list3);
        arrayList.add(zzabh.zzC);
        arrayList.add(zzabh.zzm);
        arrayList.add(zzabh.zzg);
        arrayList.add(zzabh.zzi);
        arrayList.add(zzabh.zzk);
        zzwj zzwjVar = zzabh.zzt;
        arrayList.add(zzabh.zzc(Long.TYPE, Long.class, zzwjVar));
        arrayList.add(zzabh.zzc(Double.TYPE, Double.class, z11 ? zzabh.zzv : new zzvm(this)));
        arrayList.add(zzabh.zzc(Float.TYPE, Float.class, z11 ? zzabh.zzu : new zzvn(this)));
        arrayList.add(zzzf.zza(i13));
        arrayList.add(zzabh.zzo);
        arrayList.add(zzabh.zzq);
        arrayList.add(zzabh.zzb(AtomicLong.class, new zzvo(zzwjVar).nullSafe()));
        arrayList.add(zzabh.zzb(AtomicLongArray.class, new zzvp(zzwjVar).nullSafe()));
        arrayList.add(zzabh.zzs);
        arrayList.add(zzabh.zzx);
        arrayList.add(zzabh.zzE);
        arrayList.add(zzabh.zzG);
        arrayList.add(zzabh.zzb(BigDecimal.class, zzabh.zzz));
        arrayList.add(zzabh.zzb(BigInteger.class, zzabh.zzA));
        arrayList.add(zzabh.zzb(zzxq.class, zzabh.zzB));
        arrayList.add(zzabh.zzI);
        arrayList.add(zzabh.zzK);
        arrayList.add(zzabh.zzO);
        arrayList.add(zzabh.zzQ);
        arrayList.add(zzabh.zzU);
        arrayList.add(zzabh.zzM);
        arrayList.add(zzabh.zzd);
        arrayList.add(zzyu.zza);
        arrayList.add(zzabh.zzS);
        if (zzabz.zza) {
            arrayList.add(zzabz.zzc);
            arrayList.add(zzabz.zzb);
            arrayList.add(zzabz.zzd);
        }
        arrayList.add(zzyn.zza);
        arrayList.add(zzabh.zzb);
        arrayList.add(new zzyp(zzxlVar));
        arrayList.add(new zzzd(zzxlVar, false));
        zzyx zzyxVar = new zzyx(zzxlVar);
        this.zzk = zzyxVar;
        arrayList.add(zzyxVar);
        arrayList.add(zzabh.zzX);
        arrayList.add(new zzzq(zzxlVar, i8, zzxnVar, zzyxVar, list4));
        this.zzb = Collections.unmodifiableList(arrayList);
    }
}
