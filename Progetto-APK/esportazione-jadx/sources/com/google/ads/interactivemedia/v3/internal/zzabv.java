package com.google.ads.interactivemedia.v3.internal;

import java.io.IOException;
import java.sql.Time;
import java.text.DateFormat;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.TimeZone;

/* JADX INFO: loaded from: classes.dex */
final class zzabv extends zzwj {
    static final zzwk zza = new zzabt();
    private final DateFormat zzb = new SimpleDateFormat("hh:mm:ss a");

    private zzabv() {
    }

    @Override // com.google.ads.interactivemedia.v3.internal.zzwj
    public final /* bridge */ /* synthetic */ void write(zzace zzaceVar, Object obj) throws IOException {
        String str;
        Time time = (Time) obj;
        if (time == null) {
            zzaceVar.zzg();
            return;
        }
        synchronized (this) {
            str = this.zzb.format((Date) time);
        }
        zzaceVar.zzl(str);
    }

    @Override // com.google.ads.interactivemedia.v3.internal.zzwj
    /* JADX INFO: renamed from: zza, reason: merged with bridge method [inline-methods] */
    public final Time read(zzacc zzaccVar) throws IOException {
        Time time;
        if (zzaccVar.zzr() == 9) {
            zzaccVar.zzm();
            return null;
        }
        String strZzh = zzaccVar.zzh();
        synchronized (this) {
            TimeZone timeZone = this.zzb.getTimeZone();
            try {
                try {
                    time = new Time(this.zzb.parse(strZzh).getTime());
                    this.zzb.setTimeZone(timeZone);
                } catch (ParseException e8) {
                    throw new zzwe("Failed parsing '" + strZzh + "' as SQL Time; at path " + zzaccVar.zzf(), e8);
                }
            } catch (Throwable th) {
                this.zzb.setTimeZone(timeZone);
                throw th;
            }
        }
        return time;
    }

    public /* synthetic */ zzabv(zzabu zzabuVar) {
    }
}
