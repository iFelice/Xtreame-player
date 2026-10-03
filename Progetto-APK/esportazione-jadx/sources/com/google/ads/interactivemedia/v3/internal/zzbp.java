package com.google.ads.interactivemedia.v3.internal;

import okhttp3.HttpUrl;
import okhttp3.internal.http2.Http2;
import okhttp3.internal.http2.Http2Connection;
import org.videolan.libvlc.interfaces.IMediaList;

/* JADX INFO: loaded from: classes.dex */
public final class zzbp extends zzady implements zzafc {
    private static final zzbp zzb;
    private long zzA;
    private long zzB;
    private long zzF;
    private long zzG;
    private long zzH;
    private long zzJ;
    private zzbs zzM;
    private zzbi zzaC;
    private long zzaI;
    private zzax zzaL;
    private zzba zzaM;
    private int zzaP;
    private long zzaQ;
    private boolean zzaT;
    private long zzaV;
    private zzcb zzaW;
    private zzbl zzae;
    private zzbo zzag;
    private int zzar;
    private int zzas;
    private int zzat;
    private zzce zzau;
    private int zzd;
    private int zze;
    private int zzf;
    private long zzi;
    private long zzj;
    private long zzk;
    private long zzl;
    private long zzm;
    private long zzn;
    private long zzo;
    private long zzp;
    private long zzq;
    private long zzr;
    private long zzt;
    private long zzu;
    private long zzv;
    private long zzw;
    private long zzx;
    private long zzy;
    private long zzz;
    private String zzg = HttpUrl.FRAGMENT_ENCODE_SET;
    private String zzh = HttpUrl.FRAGMENT_ENCODE_SET;
    private String zzs = HttpUrl.FRAGMENT_ENCODE_SET;
    private String zzC = HttpUrl.FRAGMENT_ENCODE_SET;
    private String zzD = "D";
    private String zzE = HttpUrl.FRAGMENT_ENCODE_SET;
    private String zzI = HttpUrl.FRAGMENT_ENCODE_SET;
    private long zzK = -1;
    private long zzL = -1;
    private long zzN = -1;
    private long zzO = -1;
    private long zzP = -1;
    private long zzQ = -1;
    private long zzR = -1;
    private long zzS = -1;
    private String zzT = "D";
    private String zzU = "D";
    private long zzV = -1;
    private int zzW = 1000;
    private int zzX = 1000;
    private long zzY = -1;
    private long zzZ = -1;
    private long zzaa = -1;
    private long zzab = -1;
    private long zzac = -1;
    private int zzad = 1000;
    private zzaed zzaf = zzady.zzaG();
    private long zzah = -1;
    private long zzai = -1;
    private long zzaj = -1;
    private long zzak = -1;
    private long zzal = -1;
    private long zzam = -1;
    private long zzan = -1;
    private long zzao = -1;
    private String zzap = "D";
    private long zzaq = -1;
    private long zzav = -1;
    private int zzaw = 1000;
    private int zzax = 1000;
    private String zzay = "D";
    private zzaed zzaz = zzady.zzaG();
    private int zzaA = 1000;
    private zzaed zzaB = zzady.zzaG();
    private String zzaD = HttpUrl.FRAGMENT_ENCODE_SET;
    private long zzaE = -1;
    private long zzaF = -1;
    private long zzaG = -1;
    private long zzaH = -1;
    private long zzaJ = -1;
    private String zzaK = HttpUrl.FRAGMENT_ENCODE_SET;
    private long zzaN = -1;
    private long zzaO = -1;
    private String zzaR = HttpUrl.FRAGMENT_ENCODE_SET;
    private int zzaS = 2;
    private String zzaU = HttpUrl.FRAGMENT_ENCODE_SET;
    private long zzaX = -1;
    private String zzaY = HttpUrl.FRAGMENT_ENCODE_SET;

    static {
        zzbp zzbpVar = new zzbp();
        zzb = zzbpVar;
        zzady.zzaM(zzbp.class, zzbpVar);
    }

    private zzbp() {
    }

    public static /* synthetic */ void zzA(zzbp zzbpVar, String str) {
        str.getClass();
        zzbpVar.zzf |= 4194304;
        zzbpVar.zzaR = str;
    }

    public static /* synthetic */ void zzB(zzbp zzbpVar, long j8) {
        zzbpVar.zzf |= 67108864;
        zzbpVar.zzaV = j8;
    }

    public static /* synthetic */ void zzC(zzbp zzbpVar, long j8) {
        zzbpVar.zzf |= 4096;
        zzbpVar.zzaH = j8;
    }

    public static /* synthetic */ void zzD(zzbp zzbpVar, long j8) {
        zzbpVar.zzf |= 2048;
        zzbpVar.zzaG = j8;
    }

    public static /* synthetic */ void zzE(zzbp zzbpVar, String str) {
        str.getClass();
        zzbpVar.zze |= 256;
        zzbpVar.zzU = str;
    }

    public static /* synthetic */ void zzF(zzbp zzbpVar, String str) {
        str.getClass();
        zzbpVar.zzd |= 4194304;
        zzbpVar.zzC = str;
    }

    public static /* synthetic */ void zzG(zzbp zzbpVar, long j8) {
        zzbpVar.zzd |= 1048576;
        zzbpVar.zzA = j8;
    }

    public static /* synthetic */ void zzH(zzbp zzbpVar, long j8) {
        zzbpVar.zzd |= 1024;
        zzbpVar.zzq = j8;
    }

    public static /* synthetic */ void zzI(zzbp zzbpVar, long j8) {
        zzbpVar.zzd |= 2048;
        zzbpVar.zzr = j8;
    }

    public static /* synthetic */ void zzJ(zzbp zzbpVar, String str) {
        str.getClass();
        zzbpVar.zzd |= 1;
        zzbpVar.zzg = str;
    }

    public static /* synthetic */ void zzK(zzbp zzbpVar, long j8) {
        zzbpVar.zze |= 4194304;
        zzbpVar.zzaj = j8;
    }

    public static /* synthetic */ void zzL(zzbp zzbpVar, long j8) {
        zzbpVar.zzd |= 524288;
        zzbpVar.zzz = j8;
    }

    public static /* synthetic */ void zzM(zzbp zzbpVar, long j8) {
        zzbpVar.zze |= 8388608;
        zzbpVar.zzak = j8;
    }

    public static /* synthetic */ void zzN(zzbp zzbpVar, long j8) {
        zzbpVar.zze |= 64;
        zzbpVar.zzS = j8;
    }

    public static /* synthetic */ void zzO(zzbp zzbpVar, long j8) {
        zzbpVar.zze |= 16;
        zzbpVar.zzQ = j8;
    }

    public static /* synthetic */ void zzP(zzbp zzbpVar, long j8) {
        zzbpVar.zzd |= Integer.MIN_VALUE;
        zzbpVar.zzL = j8;
    }

    public static /* synthetic */ void zzQ(zzbp zzbpVar, long j8) {
        zzbpVar.zze |= 8;
        zzbpVar.zzP = j8;
    }

    public static /* synthetic */ void zzR(zzbp zzbpVar, long j8) {
        zzbpVar.zze |= 4;
        zzbpVar.zzO = j8;
    }

    public static /* synthetic */ void zzS(zzbp zzbpVar, long j8) {
        zzbpVar.zzd |= 1073741824;
        zzbpVar.zzK = j8;
    }

    public static /* synthetic */ void zzT(zzbp zzbpVar, long j8) {
        zzbpVar.zzd |= 32768;
        zzbpVar.zzv = j8;
    }

    public static /* synthetic */ void zzU(zzbp zzbpVar, long j8) {
        zzbpVar.zze |= 2;
        zzbpVar.zzN = j8;
    }

    public static /* synthetic */ void zzV(zzbp zzbpVar, long j8) {
        zzbpVar.zzd |= 8192;
        zzbpVar.zzt = j8;
    }

    public static /* synthetic */ void zzW(zzbp zzbpVar, long j8) {
        zzbpVar.zzd |= Http2.INITIAL_MAX_FRAME_SIZE;
        zzbpVar.zzu = j8;
    }

    public static /* synthetic */ void zzX(zzbp zzbpVar, long j8) {
        zzbpVar.zze |= Http2.INITIAL_MAX_FRAME_SIZE;
        zzbpVar.zzaa = j8;
    }

    public static /* synthetic */ void zzY(zzbp zzbpVar, long j8) {
        zzbpVar.zzf |= IMediaList.Event.ItemAdded;
        zzbpVar.zzaE = j8;
    }

    public static /* synthetic */ void zzZ(zzbp zzbpVar, zzbl zzblVar) {
        zzblVar.getClass();
        zzbpVar.zzae = zzblVar;
        zzbpVar.zze |= 262144;
    }

    public static zzan zza() {
        return (zzan) zzb.zzay();
    }

    public static /* synthetic */ void zzaa(zzbp zzbpVar, long j8) {
        zzbpVar.zzd |= 67108864;
        zzbpVar.zzG = j8;
    }

    public static /* synthetic */ void zzab(zzbp zzbpVar, long j8) {
        zzbpVar.zzd |= 65536;
        zzbpVar.zzw = j8;
    }

    public static /* synthetic */ void zzac(zzbp zzbpVar, long j8) {
        zzbpVar.zzd |= 2097152;
        zzbpVar.zzB = j8;
    }

    public static /* synthetic */ void zzad(zzbp zzbpVar, long j8) {
        zzbpVar.zzd |= 134217728;
        zzbpVar.zzH = j8;
    }

    public static /* synthetic */ void zzae(zzbp zzbpVar, long j8) {
        zzbpVar.zzd |= 33554432;
        zzbpVar.zzF = j8;
    }

    public static /* synthetic */ void zzaf(zzbp zzbpVar, long j8) {
        zzbpVar.zzd |= 536870912;
        zzbpVar.zzJ = j8;
    }

    public static /* synthetic */ void zzag(zzbp zzbpVar, zzbo zzboVar) {
        zzboVar.getClass();
        zzbpVar.zzag = zzboVar;
        zzbpVar.zze |= 524288;
    }

    public static /* synthetic */ void zzah(zzbp zzbpVar, String str) {
        str.getClass();
        zzbpVar.zzd |= 268435456;
        zzbpVar.zzI = str;
    }

    public static /* synthetic */ void zzam(zzbp zzbpVar, int i8) {
        zzbpVar.zzX = i8 - 1;
        zzbpVar.zze |= 2048;
    }

    public static /* synthetic */ void zzan(zzbp zzbpVar, int i8) {
        zzbpVar.zzaS = 5;
        zzbpVar.zzf |= 8388608;
    }

    public static /* synthetic */ void zzao(zzbp zzbpVar, int i8) {
        zzbpVar.zzad = i8 - 1;
        zzbpVar.zze |= 131072;
    }

    public static /* synthetic */ void zzap(zzbp zzbpVar, int i8) {
        zzbpVar.zzax = i8 - 1;
        zzbpVar.zzf |= 16;
    }

    public static /* synthetic */ void zzaq(zzbp zzbpVar, int i8) {
        zzbpVar.zzaP = i8 - 1;
        zzbpVar.zzf |= 1048576;
    }

    public static /* synthetic */ void zzar(zzbp zzbpVar, int i8) {
        zzbpVar.zzaw = i8 - 1;
        zzbpVar.zzf |= 8;
    }

    public static /* synthetic */ void zzas(zzbp zzbpVar, int i8) {
        zzbpVar.zzW = i8 - 1;
        zzbpVar.zze |= 1024;
    }

    public static zzbp zzc() {
        return zzb;
    }

    public static zzbp zzd(byte[] bArr, zzadk zzadkVar) {
        return (zzbp) zzady.zzaE(zzb, bArr, zzadkVar);
    }

    public static /* synthetic */ void zzh(zzbp zzbpVar, zzbl zzblVar) {
        zzblVar.getClass();
        zzaed zzaedVar = zzbpVar.zzaf;
        if (!zzaedVar.zzc()) {
            zzbpVar.zzaf = zzady.zzaH(zzaedVar);
        }
        zzbpVar.zzaf.add(zzblVar);
    }

    public static /* synthetic */ void zzj(zzbp zzbpVar, long j8) {
        zzbpVar.zze |= 67108864;
        zzbpVar.zzan = j8;
    }

    public static /* synthetic */ void zzk(zzbp zzbpVar, String str) {
        str.getClass();
        zzbpVar.zze |= 268435456;
        zzbpVar.zzap = str;
    }

    public static /* synthetic */ void zzl(zzbp zzbpVar, long j8) {
        zzbpVar.zze |= 134217728;
        zzbpVar.zzao = j8;
    }

    public static /* synthetic */ void zzn(zzbp zzbpVar, long j8) {
        zzbpVar.zzf |= 1024;
        zzbpVar.zzaF = j8;
    }

    public static /* synthetic */ void zzo(zzbp zzbpVar, String str) {
        str.getClass();
        zzbpVar.zzf |= 32768;
        zzbpVar.zzaK = str;
    }

    public static /* synthetic */ void zzp(zzbp zzbpVar, String str) {
        str.getClass();
        zzbpVar.zzd |= 2;
        zzbpVar.zzh = str;
    }

    public static /* synthetic */ void zzq(zzbp zzbpVar, String str) {
        str.getClass();
        zzbpVar.zze |= 128;
        zzbpVar.zzT = str;
    }

    public static /* synthetic */ void zzr(zzbp zzbpVar, long j8) {
        zzbpVar.zzd |= 4;
        zzbpVar.zzi = j8;
    }

    public static /* synthetic */ void zzs(zzbp zzbpVar, long j8) {
        zzbpVar.zze |= 2097152;
        zzbpVar.zzai = j8;
    }

    public static /* synthetic */ void zzt(zzbp zzbpVar, long j8) {
        zzbpVar.zzd |= 32;
        zzbpVar.zzl = j8;
    }

    public static /* synthetic */ void zzu(zzbp zzbpVar, long j8) {
        zzbpVar.zzd |= 16;
        zzbpVar.zzk = j8;
    }

    public static /* synthetic */ void zzv(zzbp zzbpVar, String str) {
        str.getClass();
        zzbpVar.zzd |= Http2Connection.OKHTTP_CLIENT_WINDOW_SIZE;
        zzbpVar.zzE = str;
    }

    public static /* synthetic */ void zzw(zzbp zzbpVar, long j8) {
        zzbpVar.zze |= 32;
        zzbpVar.zzR = j8;
    }

    public static /* synthetic */ void zzx(zzbp zzbpVar, long j8) {
        zzbpVar.zze |= 4096;
        zzbpVar.zzY = j8;
    }

    public static /* synthetic */ void zzy(zzbp zzbpVar, long j8) {
        zzbpVar.zze |= 8192;
        zzbpVar.zzZ = j8;
    }

    public static /* synthetic */ void zzz(zzbp zzbpVar, boolean z7) {
        zzbpVar.zzf |= Http2Connection.OKHTTP_CLIENT_WINDOW_SIZE;
        zzbpVar.zzaT = z7;
    }

    public final boolean zzai() {
        return this.zzaT;
    }

    public final boolean zzaj() {
        return (this.zzd & 4194304) != 0;
    }

    public final boolean zzak() {
        return (this.zzf & 134217728) != 0;
    }

    public final int zzal() {
        int iZza = zzat.zza(this.zzaS);
        if (iZza == 0) {
            return 3;
        }
        return iZza;
    }

    public final zzcb zze() {
        zzcb zzcbVar = this.zzaW;
        return zzcbVar == null ? zzcb.zzc() : zzcbVar;
    }

    public final String zzf() {
        return this.zzaR;
    }

    public final String zzg() {
        return this.zzC;
    }

    @Override // com.google.ads.interactivemedia.v3.internal.zzady
    public final Object zzm(int i8, Object obj, Object obj2) {
        int i9 = i8 - 1;
        if (i9 == 0) {
            return (byte) 1;
        }
        if (i9 == 2) {
            zzaeb zzaebVar = zzbx.zza;
            return zzady.zzaJ(zzb, "\u0001a\u0000\u0003\u0001Įa\u0000\u0003\u0000\u0001ဈ\u0000\u0002ဈ\u0001\u0003ဂ\u0002\u0004ဂ\u0003\u0005ဂ\u0004\u0006ဂ\u0005\u0007ဂ\u0006\bဂ\u0007\tဂ\b\nဂ\t\u000bဂ\n\fဂ\u000b\rဈ\f\u000eဂ\r\u000fဂ\u000e\u0010ဂ\u000f\u0011ဂ\u0010\u0012ဂ\u0011\u0013ဂ\u0012\u0014ဂ\u0013\u0015ဂU\u0016ဂ\u0014\u0017ဂ\u0015\u0018ဈV\u0019ဂZ\u001a᠌W\u001bဈ\u0016\u001cဇX\u001dဈ\u0018\u001eဈY\u001fဂ\u0019 ဂ\u001a!ဂ\u001b\"ဈ\u001c#ဂ\u001d$ဂ\u001e%ဂ\u001f&ဉ 'ဂ!(ဂ\")ဂ#*ဂ$+\u001b,ဂ%-ဂ&.ဈ'/ဈ(0᠌*1᠌+2ဉ23ဂ,4ဂ-5ဂ.6ဂ/7ဂ08᠌19ဉ3:ဂ4;ဂ5<ဂ6=ဂ7>ဂ:?ဂ;@ဂ=A᠌>B᠌?Cဈ<D᠌@EဉAFဂBGဂ8Hဂ9I᠌CJဂ)Kဈ\u0017L᠌DMဈEN\u001bO᠌FP\u001bQဉGRဈHSဂITဂJUဂKVဂLWဂMXဂNYဈOZဉP[ဉQ\\ဂR]ဂS^᠌TÉဉ[ĭဂ\\Įဈ]", new Object[]{"zzd", "zze", "zzf", "zzg", "zzh", "zzi", "zzj", "zzk", "zzl", "zzm", "zzn", "zzo", "zzp", "zzq", "zzr", "zzs", "zzt", "zzu", "zzv", "zzw", "zzx", "zzy", "zzz", "zzaQ", "zzA", "zzB", "zzaR", "zzaV", "zzaS", zzas.zza, "zzC", "zzaT", "zzE", "zzaU", "zzF", "zzG", "zzH", "zzI", "zzJ", "zzK", "zzL", "zzM", "zzN", "zzO", "zzP", "zzQ", "zzaf", zzbl.class, "zzR", "zzS", "zzT", "zzU", "zzW", zzaebVar, "zzX", zzaebVar, "zzae", "zzY", "zzZ", "zzaa", "zzab", "zzac", "zzad", zzaebVar, "zzag", "zzah", "zzai", "zzaj", "zzak", "zzan", "zzao", "zzaq", "zzar", zzbw.zza, "zzas", zzby.zza, "zzap", "zzat", zzao.zza, "zzau", "zzav", "zzal", "zzam", "zzaw", zzaebVar, "zzV", "zzD", "zzax", zzaebVar, "zzay", "zzaz", zzbf.class, "zzaA", zzaebVar, "zzaB", zzar.class, "zzaC", "zzaD", "zzaE", "zzaF", "zzaG", "zzaH", "zzaI", "zzaJ", "zzaK", "zzaL", "zzaM", "zzaN", "zzaO", "zzaP", zzbb.zza, "zzaW", "zzaX", "zzaY"});
        }
        if (i9 == 3) {
            return new zzbp();
        }
        zzam zzamVar = null;
        if (i9 == 4) {
            return new zzan(zzamVar);
        }
        if (i9 != 5) {
            return null;
        }
        return zzb;
    }
}
