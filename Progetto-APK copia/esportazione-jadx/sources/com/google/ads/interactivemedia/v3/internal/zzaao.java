package com.google.ads.interactivemedia.v3.internal;

import java.io.IOException;
import java.util.Calendar;
import java.util.GregorianCalendar;

/* JADX INFO: loaded from: classes.dex */
final class zzaao extends zzwj {
    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Code duplicated, block: B:29:0x006f  */
    @Override // com.google.ads.interactivemedia.v3.internal.zzwj
    public final /* bridge */ /* synthetic */ Object read(zzacc zzaccVar) throws IOException {
        byte b8;
        if (zzaccVar.zzr() == 9) {
            zzaccVar.zzm();
            return null;
        }
        zzaccVar.zzj();
        int i8 = 0;
        int i9 = 0;
        int i10 = 0;
        int i11 = 0;
        int i12 = 0;
        int i13 = 0;
        while (zzaccVar.zzr() != 4) {
            String strZzg = zzaccVar.zzg();
            int iZzb = zzaccVar.zzb();
            switch (strZzg) {
                case "dayOfMonth":
                    b8 = 2;
                    break;
                case "minute":
                    b8 = 4;
                    break;
                case "second":
                    b8 = 5;
                    break;
                case "year":
                    b8 = 0;
                    break;
                case "month":
                    b8 = 1;
                    break;
                case "hourOfDay":
                    b8 = 3;
                    break;
                default:
                    b8 = -1;
                    break;
            }
            if (b8 == 0) {
                i8 = iZzb;
            } else if (b8 == 1) {
                i9 = iZzb;
            } else if (b8 == 2) {
                i10 = iZzb;
            } else if (b8 == 3) {
                i11 = iZzb;
            } else if (b8 == 4) {
                i12 = iZzb;
            } else if (b8 == 5) {
                i13 = iZzb;
            }
        }
        zzaccVar.zzl();
        return new GregorianCalendar(i8, i9, i10, i11, i12, i13);
    }

    @Override // com.google.ads.interactivemedia.v3.internal.zzwj
    public final /* bridge */ /* synthetic */ void write(zzace zzaceVar, Object obj) throws IOException {
        Calendar calendar = (Calendar) obj;
        if (calendar == null) {
            zzaceVar.zzg();
            return;
        }
        zzaceVar.zzc();
        zzaceVar.zzf("year");
        zzaceVar.zzi(calendar.get(1));
        zzaceVar.zzf("month");
        zzaceVar.zzi(calendar.get(2));
        zzaceVar.zzf("dayOfMonth");
        zzaceVar.zzi(calendar.get(5));
        zzaceVar.zzf("hourOfDay");
        zzaceVar.zzi(calendar.get(11));
        zzaceVar.zzf("minute");
        zzaceVar.zzi(calendar.get(12));
        zzaceVar.zzf("second");
        zzaceVar.zzi(calendar.get(13));
        zzaceVar.zze();
    }
}
