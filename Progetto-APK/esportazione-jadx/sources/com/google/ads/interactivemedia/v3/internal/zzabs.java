package com.google.ads.interactivemedia.v3.internal;

import java.io.IOException;
import java.sql.Date;
import java.text.DateFormat;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.TimeZone;

/* JADX INFO: loaded from: classes.dex */
final class zzabs extends zzwj {
    static final zzwk zza = new zzabq();
    private final DateFormat zzb = new SimpleDateFormat("MMM d, yyyy");

    private zzabs() {
    }

    @Override // com.google.ads.interactivemedia.v3.internal.zzwj
    public final /* bridge */ /* synthetic */ void write(zzace zzaceVar, Object obj) throws IOException {
        String str;
        Date date = (Date) obj;
        if (date == null) {
            zzaceVar.zzg();
            return;
        }
        synchronized (this) {
            str = this.zzb.format((java.util.Date) date);
        }
        zzaceVar.zzl(str);
    }

    @Override // com.google.ads.interactivemedia.v3.internal.zzwj
    /* JADX INFO: renamed from: zza, reason: merged with bridge method [inline-methods] */
    public final Date read(zzacc zzaccVar) throws IOException {
        Date date;
        if (zzaccVar.zzr() == 9) {
            zzaccVar.zzm();
            return null;
        }
        String strZzh = zzaccVar.zzh();
        synchronized (this) {
            TimeZone timeZone = this.zzb.getTimeZone();
            try {
                try {
                    date = new Date(this.zzb.parse(strZzh).getTime());
                    this.zzb.setTimeZone(timeZone);
                } catch (ParseException e8) {
                    throw new zzwe("Failed parsing '" + strZzh + "' as SQL Date; at path " + zzaccVar.zzf(), e8);
                }
            } catch (Throwable th) {
                this.zzb.setTimeZone(timeZone);
                throw th;
            }
        }
        return date;
    }

    public /* synthetic */ zzabs(zzabr zzabrVar) {
    }
}
