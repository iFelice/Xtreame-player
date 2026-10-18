package com.google.ads.interactivemedia.v3.internal;

import java.io.Serializable;
import java.util.AbstractMap;
import java.util.Comparator;
import java.util.Map;
import java.util.Objects;
import java.util.Set;

/* JADX INFO: loaded from: classes.dex */
public final class zzxy extends AbstractMap implements Serializable {
    private static final Comparator zze = new zzxr();
    zzxx zza;
    int zzb;
    int zzc;
    final zzxx zzd;
    private final Comparator zzf;
    private final boolean zzg;
    private zzxt zzh;
    private zzxv zzi;

    public zzxy() {
        this(zze, true);
    }

    /* JADX WARN: Code duplicated, block: B:60:0x0084 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:61:0x0084 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:64:0x0080 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:67:0x0080 A[SYNTHETIC] */
    private final void zzf(zzxx zzxxVar, boolean z7) {
        while (zzxxVar != null) {
            zzxx zzxxVar2 = zzxxVar.zzb;
            zzxx zzxxVar3 = zzxxVar.zzc;
            boolean z8 = false;
            int i8 = zzxxVar2 != null ? zzxxVar2.zzi : 0;
            int i9 = zzxxVar3 != null ? zzxxVar3.zzi : 0;
            int i10 = i8 - i9;
            boolean z9 = true;
            if (i10 == -2) {
                zzxx zzxxVar4 = zzxxVar3.zzb;
                zzxx zzxxVar5 = zzxxVar3.zzc;
                int i11 = (zzxxVar4 != null ? zzxxVar4.zzi : 0) - (zzxxVar5 != null ? zzxxVar5.zzi : 0);
                if (i11 != -1) {
                    if (i11 == 0) {
                        if (!z7) {
                        }
                        if (z9) {
                            return;
                        }
                    } else {
                        z9 = z7;
                    }
                    zzi(zzxxVar3);
                    zzh(zzxxVar);
                    if (z9) {
                        return;
                    }
                } else {
                    z8 = z7;
                }
                zzh(zzxxVar);
                z9 = z8;
                if (z9) {
                    return;
                }
            } else if (i10 == 2) {
                zzxx zzxxVar6 = zzxxVar2.zzb;
                zzxx zzxxVar7 = zzxxVar2.zzc;
                int i12 = (zzxxVar6 != null ? zzxxVar6.zzi : 0) - (zzxxVar7 != null ? zzxxVar7.zzi : 0);
                if (i12 != 1) {
                    if (i12 == 0) {
                        if (!z7) {
                        }
                        if (z9) {
                            return;
                        }
                    } else {
                        z9 = z7;
                    }
                    zzh(zzxxVar2);
                    zzi(zzxxVar);
                    if (z9) {
                        return;
                    }
                } else {
                    z8 = z7;
                }
                zzi(zzxxVar);
                z9 = z8;
                if (z9) {
                    return;
                }
            } else if (i10 == 0) {
                zzxxVar.zzi = i8 + 1;
                if (z7) {
                    return;
                }
            } else {
                zzxxVar.zzi = Math.max(i8, i9) + 1;
                if (!z7) {
                    return;
                }
            }
            zzxxVar = zzxxVar.zza;
        }
    }

    private final void zzg(zzxx zzxxVar, zzxx zzxxVar2) {
        zzxx zzxxVar3 = zzxxVar.zza;
        zzxxVar.zza = null;
        if (zzxxVar2 != null) {
            zzxxVar2.zza = zzxxVar3;
        }
        if (zzxxVar3 == null) {
            this.zza = zzxxVar2;
        } else if (zzxxVar3.zzb == zzxxVar) {
            zzxxVar3.zzb = zzxxVar2;
        } else {
            zzxxVar3.zzc = zzxxVar2;
        }
    }

    private final void zzh(zzxx zzxxVar) {
        zzxx zzxxVar2 = zzxxVar.zzb;
        zzxx zzxxVar3 = zzxxVar.zzc;
        zzxx zzxxVar4 = zzxxVar3.zzb;
        zzxx zzxxVar5 = zzxxVar3.zzc;
        zzxxVar.zzc = zzxxVar4;
        if (zzxxVar4 != null) {
            zzxxVar4.zza = zzxxVar;
        }
        zzg(zzxxVar, zzxxVar3);
        zzxxVar3.zzb = zzxxVar;
        zzxxVar.zza = zzxxVar3;
        int iMax = Math.max(zzxxVar2 != null ? zzxxVar2.zzi : 0, zzxxVar4 != null ? zzxxVar4.zzi : 0) + 1;
        zzxxVar.zzi = iMax;
        zzxxVar3.zzi = Math.max(iMax, zzxxVar5 != null ? zzxxVar5.zzi : 0) + 1;
    }

    private final void zzi(zzxx zzxxVar) {
        zzxx zzxxVar2 = zzxxVar.zzb;
        zzxx zzxxVar3 = zzxxVar.zzc;
        zzxx zzxxVar4 = zzxxVar2.zzb;
        zzxx zzxxVar5 = zzxxVar2.zzc;
        zzxxVar.zzb = zzxxVar5;
        if (zzxxVar5 != null) {
            zzxxVar5.zza = zzxxVar;
        }
        zzg(zzxxVar, zzxxVar2);
        zzxxVar2.zzc = zzxxVar;
        zzxxVar.zza = zzxxVar2;
        int iMax = Math.max(zzxxVar3 != null ? zzxxVar3.zzi : 0, zzxxVar5 != null ? zzxxVar5.zzi : 0) + 1;
        zzxxVar.zzi = iMax;
        zzxxVar2.zzi = Math.max(iMax, zzxxVar4 != null ? zzxxVar4.zzi : 0) + 1;
    }

    @Override // java.util.AbstractMap, java.util.Map
    public final void clear() {
        this.zza = null;
        this.zzb = 0;
        this.zzc++;
        zzxx zzxxVar = this.zzd;
        zzxxVar.zze = zzxxVar;
        zzxxVar.zzd = zzxxVar;
    }

    @Override // java.util.AbstractMap, java.util.Map
    public final boolean containsKey(Object obj) {
        return zzc(obj) != null;
    }

    @Override // java.util.AbstractMap, java.util.Map
    public final Set entrySet() {
        zzxt zzxtVar = this.zzh;
        if (zzxtVar != null) {
            return zzxtVar;
        }
        zzxt zzxtVar2 = new zzxt(this);
        this.zzh = zzxtVar2;
        return zzxtVar2;
    }

    @Override // java.util.AbstractMap, java.util.Map
    public final Object get(Object obj) {
        zzxx zzxxVarZzc = zzc(obj);
        if (zzxxVarZzc != null) {
            return zzxxVarZzc.zzh;
        }
        return null;
    }

    @Override // java.util.AbstractMap, java.util.Map
    public final Set keySet() {
        zzxv zzxvVar = this.zzi;
        if (zzxvVar != null) {
            return zzxvVar;
        }
        zzxv zzxvVar2 = new zzxv(this);
        this.zzi = zzxvVar2;
        return zzxvVar2;
    }

    @Override // java.util.AbstractMap, java.util.Map
    public final Object put(Object obj, Object obj2) {
        if (obj == null) {
            throw new NullPointerException("key == null");
        }
        if (obj2 == null && !this.zzg) {
            throw new NullPointerException("value == null");
        }
        zzxx zzxxVarZza = zza(obj, true);
        Object obj3 = zzxxVarZza.zzh;
        zzxxVarZza.zzh = obj2;
        return obj3;
    }

    @Override // java.util.AbstractMap, java.util.Map
    public final Object remove(Object obj) {
        zzxx zzxxVarZzd = zzd(obj);
        if (zzxxVarZzd != null) {
            return zzxxVarZzd.zzh;
        }
        return null;
    }

    @Override // java.util.AbstractMap, java.util.Map
    public final int size() {
        return this.zzb;
    }

    public final zzxx zza(Object obj, boolean z7) {
        int iCompareTo;
        zzxx zzxxVar;
        Comparator comparator = this.zzf;
        zzxx zzxxVar2 = this.zza;
        if (zzxxVar2 != null) {
            Comparable comparable = comparator == zze ? (Comparable) obj : null;
            while (true) {
                iCompareTo = comparable != null ? comparable.compareTo(zzxxVar2.zzf) : comparator.compare(obj, zzxxVar2.zzf);
                if (iCompareTo == 0) {
                    return zzxxVar2;
                }
                zzxx zzxxVar3 = iCompareTo < 0 ? zzxxVar2.zzb : zzxxVar2.zzc;
                if (zzxxVar3 == null) {
                    break;
                }
                zzxxVar2 = zzxxVar3;
            }
        } else {
            iCompareTo = 0;
        }
        if (!z7) {
            return null;
        }
        zzxx zzxxVar4 = this.zzd;
        if (zzxxVar2 != null) {
            zzxxVar = new zzxx(this.zzg, zzxxVar2, obj, zzxxVar4, zzxxVar4.zze);
            if (iCompareTo < 0) {
                zzxxVar2.zzb = zzxxVar;
            } else {
                zzxxVar2.zzc = zzxxVar;
            }
            zzf(zzxxVar2, true);
        } else {
            if (comparator == zze && !(obj instanceof Comparable)) {
                throw new ClassCastException(obj.getClass().getName().concat(" is not Comparable"));
            }
            zzxxVar = new zzxx(this.zzg, null, obj, zzxxVar4, zzxxVar4.zze);
            this.zza = zzxxVar;
        }
        this.zzb++;
        this.zzc++;
        return zzxxVar;
    }

    public final zzxx zzb(Map.Entry entry) {
        zzxx zzxxVarZzc = zzc(entry.getKey());
        if (zzxxVarZzc == null || !Objects.equals(zzxxVarZzc.zzh, entry.getValue())) {
            return null;
        }
        return zzxxVarZzc;
    }

    public final zzxx zzc(Object obj) {
        if (obj == null) {
            return null;
        }
        try {
            return zza(obj, false);
        } catch (ClassCastException unused) {
            return null;
        }
    }

    public final zzxx zzd(Object obj) {
        zzxx zzxxVarZzc = zzc(obj);
        if (zzxxVarZzc != null) {
            zze(zzxxVarZzc, true);
        }
        return zzxxVarZzc;
    }

    public final void zze(zzxx zzxxVar, boolean z7) {
        zzxx zzxxVar2;
        zzxx zzxxVar3;
        int i8;
        if (z7) {
            zzxx zzxxVar4 = zzxxVar.zze;
            zzxxVar4.zzd = zzxxVar.zzd;
            zzxxVar.zzd.zze = zzxxVar4;
        }
        zzxx zzxxVar5 = zzxxVar.zzb;
        zzxx zzxxVar6 = zzxxVar.zzc;
        zzxx zzxxVar7 = zzxxVar.zza;
        int i9 = 0;
        if (zzxxVar5 == null || zzxxVar6 == null) {
            if (zzxxVar5 != null) {
                zzg(zzxxVar, zzxxVar5);
                zzxxVar.zzb = null;
            } else if (zzxxVar6 != null) {
                zzg(zzxxVar, zzxxVar6);
                zzxxVar.zzc = null;
            } else {
                zzg(zzxxVar, null);
            }
            zzf(zzxxVar7, false);
            this.zzb--;
            this.zzc++;
            return;
        }
        if (zzxxVar5.zzi > zzxxVar6.zzi) {
            do {
                zzxxVar3 = zzxxVar5;
                zzxxVar5 = zzxxVar5.zzc;
            } while (zzxxVar5 != null);
        } else {
            do {
                zzxxVar2 = zzxxVar6;
                zzxxVar6 = zzxxVar6.zzb;
            } while (zzxxVar6 != null);
            zzxxVar3 = zzxxVar2;
        }
        zze(zzxxVar3, false);
        zzxx zzxxVar8 = zzxxVar.zzb;
        if (zzxxVar8 != null) {
            i8 = zzxxVar8.zzi;
            zzxxVar3.zzb = zzxxVar8;
            zzxxVar8.zza = zzxxVar3;
            zzxxVar.zzb = null;
        } else {
            i8 = 0;
        }
        zzxx zzxxVar9 = zzxxVar.zzc;
        if (zzxxVar9 != null) {
            i9 = zzxxVar9.zzi;
            zzxxVar3.zzc = zzxxVar9;
            zzxxVar9.zza = zzxxVar3;
            zzxxVar.zzc = null;
        }
        zzxxVar3.zzi = Math.max(i8, i9) + 1;
        zzg(zzxxVar, zzxxVar3);
    }

    public zzxy(Comparator comparator, boolean z7) {
        this.zzb = 0;
        this.zzc = 0;
        this.zzf = comparator;
        this.zzg = z7;
        this.zzd = new zzxx(z7);
    }

    public zzxy(boolean z7) {
        this(zze, false);
    }
}
