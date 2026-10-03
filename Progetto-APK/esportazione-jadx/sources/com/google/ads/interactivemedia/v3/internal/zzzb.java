package com.google.ads.interactivemedia.v3.internal;

import java.io.IOException;
import java.io.Writer;
import java.util.ArrayList;
import java.util.List;
import java.util.Objects;

/* JADX INFO: loaded from: classes.dex */
public final class zzzb extends zzace {
    private static final Writer zza = new zzza();
    private static final zzwb zzb = new zzwb("closed");
    private final List zzc;
    private String zzd;
    private zzvw zze;

    public zzzb() {
        super(zza);
        this.zzc = new ArrayList();
        this.zze = zzvy.zza;
    }

    private final zzvw zzv() {
        return (zzvw) this.zzc.get(this.zzc.size() - 1);
    }

    private final void zzw(zzvw zzvwVar) {
        if (this.zzd != null) {
            if (!(zzvwVar instanceof zzvy) || zzs()) {
                ((zzvz) zzv()).zzb(this.zzd, zzvwVar);
            }
            this.zzd = null;
            return;
        }
        if (this.zzc.isEmpty()) {
            this.zze = zzvwVar;
            return;
        }
        zzvw zzvwVarZzv = zzv();
        if (!(zzvwVarZzv instanceof zzvu)) {
            throw new IllegalStateException();
        }
        ((zzvu) zzvwVarZzv).zza(zzvwVar);
    }

    @Override // com.google.ads.interactivemedia.v3.internal.zzace, java.io.Closeable, java.lang.AutoCloseable
    public final void close() throws IOException {
        if (!this.zzc.isEmpty()) {
            throw new IOException("Incomplete document");
        }
        this.zzc.add(zzb);
    }

    @Override // com.google.ads.interactivemedia.v3.internal.zzace, java.io.Flushable
    public final void flush() {
    }

    public final zzvw zza() {
        if (this.zzc.isEmpty()) {
            return this.zze;
        }
        throw new IllegalStateException("Expected one JSON element but was ".concat(this.zzc.toString()));
    }

    @Override // com.google.ads.interactivemedia.v3.internal.zzace
    public final zzace zzb() {
        zzvu zzvuVar = new zzvu();
        zzw(zzvuVar);
        this.zzc.add(zzvuVar);
        return this;
    }

    @Override // com.google.ads.interactivemedia.v3.internal.zzace
    public final zzace zzc() {
        zzvz zzvzVar = new zzvz();
        zzw(zzvzVar);
        this.zzc.add(zzvzVar);
        return this;
    }

    @Override // com.google.ads.interactivemedia.v3.internal.zzace
    public final zzace zzd() {
        if (this.zzc.isEmpty() || this.zzd != null) {
            throw new IllegalStateException();
        }
        if (!(zzv() instanceof zzvu)) {
            throw new IllegalStateException();
        }
        List list = this.zzc;
        list.remove(list.size() - 1);
        return this;
    }

    @Override // com.google.ads.interactivemedia.v3.internal.zzace
    public final zzace zze() {
        if (this.zzc.isEmpty() || this.zzd != null) {
            throw new IllegalStateException();
        }
        if (!(zzv() instanceof zzvz)) {
            throw new IllegalStateException();
        }
        List list = this.zzc;
        list.remove(list.size() - 1);
        return this;
    }

    @Override // com.google.ads.interactivemedia.v3.internal.zzace
    public final zzace zzf(String str) {
        Objects.requireNonNull(str, "name == null");
        if (this.zzc.isEmpty() || this.zzd != null) {
            throw new IllegalStateException("Did not expect a name");
        }
        if (!(zzv() instanceof zzvz)) {
            throw new IllegalStateException("Please begin an object before writing a name.");
        }
        this.zzd = str;
        return this;
    }

    @Override // com.google.ads.interactivemedia.v3.internal.zzace
    public final zzace zzg() {
        zzw(zzvy.zza);
        return this;
    }

    @Override // com.google.ads.interactivemedia.v3.internal.zzace
    public final zzace zzh(double d6) {
        if (zzu() || !(Double.isNaN(d6) || Double.isInfinite(d6))) {
            zzw(new zzwb(Double.valueOf(d6)));
            return this;
        }
        throw new IllegalArgumentException("JSON forbids NaN and infinities: " + d6);
    }

    @Override // com.google.ads.interactivemedia.v3.internal.zzace
    public final zzace zzi(long j8) {
        zzw(new zzwb(Long.valueOf(j8)));
        return this;
    }

    @Override // com.google.ads.interactivemedia.v3.internal.zzace
    public final zzace zzj(Boolean bool) {
        if (bool == null) {
            zzw(zzvy.zza);
            return this;
        }
        zzw(new zzwb(bool));
        return this;
    }

    @Override // com.google.ads.interactivemedia.v3.internal.zzace
    public final zzace zzk(Number number) {
        if (number == null) {
            zzw(zzvy.zza);
            return this;
        }
        if (!zzu()) {
            double dDoubleValue = number.doubleValue();
            if (Double.isNaN(dDoubleValue) || Double.isInfinite(dDoubleValue)) {
                throw new IllegalArgumentException("JSON forbids NaN and infinities: ".concat(number.toString()));
            }
        }
        zzw(new zzwb(number));
        return this;
    }

    @Override // com.google.ads.interactivemedia.v3.internal.zzace
    public final zzace zzl(String str) {
        if (str == null) {
            zzw(zzvy.zza);
            return this;
        }
        zzw(new zzwb(str));
        return this;
    }

    @Override // com.google.ads.interactivemedia.v3.internal.zzace
    public final zzace zzm(boolean z7) {
        zzw(new zzwb(Boolean.valueOf(z7)));
        return this;
    }
}
