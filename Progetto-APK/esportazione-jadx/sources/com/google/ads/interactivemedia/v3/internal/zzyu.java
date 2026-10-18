package com.google.ads.interactivemedia.v3.internal;

import com.google.protobuf.U2;
import java.io.IOException;
import java.text.DateFormat;
import java.text.ParseException;
import java.text.ParsePosition;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;
import java.util.Locale;
import java.util.Objects;
import java.util.TimeZone;
import p000a.r;

/* JADX INFO: loaded from: classes.dex */
public final class zzyu extends zzwj {
    public static final zzwk zza = new zzyq();
    private final zzys zzb;
    private final List zzc;

    public /* synthetic */ zzyu(zzys zzysVar, int i8, int i9, zzyt zzytVar) {
        ArrayList arrayList = new ArrayList();
        this.zzc = arrayList;
        Objects.requireNonNull(zzysVar);
        this.zzb = zzysVar;
        Locale locale = Locale.US;
        arrayList.add(DateFormat.getDateTimeInstance(2, 2, locale));
        if (!Locale.getDefault().equals(locale)) {
            arrayList.add(DateFormat.getDateTimeInstance(2, 2));
        }
        if (zzxo.zza()) {
            arrayList.add(new SimpleDateFormat("MMM d, yyyy h:mm:ss a", locale));
        }
    }

    private final Date zza(zzacc zzaccVar) throws IOException {
        List list = this.zzc;
        String strZzh = zzaccVar.zzh();
        synchronized (list) {
            try {
                for (DateFormat dateFormat : this.zzc) {
                    TimeZone timeZone = dateFormat.getTimeZone();
                    try {
                        try {
                            Date date = dateFormat.parse(strZzh);
                            dateFormat.setTimeZone(timeZone);
                            return date;
                        } catch (ParseException unused) {
                            dateFormat.setTimeZone(timeZone);
                        }
                    } catch (Throwable th) {
                        dateFormat.setTimeZone(timeZone);
                        throw th;
                    }
                }
                try {
                    return zzabi.zza(strZzh, new ParsePosition(0));
                } catch (ParseException e8) {
                    throw new zzwe(U2.m("Failed parsing '", strZzh, "' as Date; at path ", zzaccVar.zzf()), e8);
                }
            } catch (Throwable th2) {
                throw th2;
            }
        }
    }

    @Override // com.google.ads.interactivemedia.v3.internal.zzwj
    public final /* bridge */ /* synthetic */ Object read(zzacc zzaccVar) throws IOException {
        if (zzaccVar.zzr() == 9) {
            zzaccVar.zzm();
            return null;
        }
        Date dateZza = zza(zzaccVar);
        this.zzb.zza(dateZza);
        return dateZza;
    }

    public final String toString() {
        DateFormat dateFormat = (DateFormat) this.zzc.get(0);
        return dateFormat instanceof SimpleDateFormat ? r.g("DefaultDateTypeAdapter(", ((SimpleDateFormat) dateFormat).toPattern(), ")") : r.g("DefaultDateTypeAdapter(", dateFormat.getClass().getSimpleName(), ")");
    }

    @Override // com.google.ads.interactivemedia.v3.internal.zzwj
    public final /* bridge */ /* synthetic */ void write(zzace zzaceVar, Object obj) throws IOException {
        String str;
        Date date = (Date) obj;
        if (date == null) {
            zzaceVar.zzg();
            return;
        }
        DateFormat dateFormat = (DateFormat) this.zzc.get(0);
        synchronized (this.zzc) {
            str = dateFormat.format(date);
        }
        zzaceVar.zzl(str);
    }
}
