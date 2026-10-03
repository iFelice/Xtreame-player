package com.google.ads.interactivemedia.v3.internal;

import com.google.android.gms.common.api.d;
import java.util.Arrays;
import okhttp3.HttpUrl;
import org.eclipse.paho.client.mqttv3.internal.wire.MqttWireMessage;

/* JADX INFO: loaded from: classes.dex */
final class zzacy extends zzada {
    private final byte[] zze;
    private int zzf;
    private int zzg;
    private int zzh;
    private final int zzi;
    private int zzj;
    private int zzk;

    public /* synthetic */ zzacy(byte[] bArr, int i8, int i9, boolean z7, zzacx zzacxVar) {
        super(null);
        this.zzk = d.API_PRIORITY_OTHER;
        this.zze = bArr;
        this.zzf = i9 + i8;
        this.zzh = i8;
        this.zzi = i8;
    }

    private final void zzF() {
        int i8 = this.zzf + this.zzg;
        this.zzf = i8;
        int i9 = i8 - this.zzi;
        int i10 = this.zzk;
        if (i9 <= i10) {
            this.zzg = 0;
            return;
        }
        int i11 = i9 - i10;
        this.zzg = i11;
        this.zzf = i8 - i11;
    }

    @Override // com.google.ads.interactivemedia.v3.internal.zzada
    public final boolean zzA() {
        return this.zzh == this.zzf;
    }

    @Override // com.google.ads.interactivemedia.v3.internal.zzada
    public final boolean zzB() {
        return zzq() != 0;
    }

    @Override // com.google.ads.interactivemedia.v3.internal.zzada
    public final double zza() {
        return Double.longBitsToDouble(zzp());
    }

    @Override // com.google.ads.interactivemedia.v3.internal.zzada
    public final float zzb() {
        return Float.intBitsToFloat(zzh());
    }

    @Override // com.google.ads.interactivemedia.v3.internal.zzada
    public final int zzc() {
        return this.zzh - this.zzi;
    }

    @Override // com.google.ads.interactivemedia.v3.internal.zzada
    public final int zzd(int i8) {
        if (i8 < 0) {
            throw new zzaeg("CodedInputStream encountered an embedded string or message which claimed to have negative size.");
        }
        int i9 = (this.zzh - this.zzi) + i8;
        if (i9 < 0) {
            throw new zzaeg("Failed to parse the message.");
        }
        int i10 = this.zzk;
        if (i9 > i10) {
            throw new zzaeg("While parsing a protocol message, the input ended unexpectedly in the middle of a field.  This could mean either that the input has been truncated or that an embedded message misreported its own length.");
        }
        this.zzk = i9;
        zzF();
        return i10;
    }

    @Override // com.google.ads.interactivemedia.v3.internal.zzada
    public final int zze() {
        return zzi();
    }

    @Override // com.google.ads.interactivemedia.v3.internal.zzada
    public final int zzf() {
        return zzh();
    }

    @Override // com.google.ads.interactivemedia.v3.internal.zzada
    public final int zzg() {
        return zzi();
    }

    public final int zzh() throws zzaeg {
        int i8 = this.zzh;
        if (this.zzf - i8 < 4) {
            throw new zzaeg("While parsing a protocol message, the input ended unexpectedly in the middle of a field.  This could mean either that the input has been truncated or that an embedded message misreported its own length.");
        }
        byte[] bArr = this.zze;
        this.zzh = i8 + 4;
        int i9 = bArr[i8] & 255;
        int i10 = bArr[i8 + 1] & 255;
        int i11 = bArr[i8 + 2] & 255;
        return ((bArr[i8 + 3] & 255) << 24) | (i10 << 8) | i9 | (i11 << 16);
    }

    public final int zzi() {
        int i8;
        int i9 = this.zzh;
        int i10 = this.zzf;
        if (i10 != i9) {
            byte[] bArr = this.zze;
            int i11 = i9 + 1;
            byte b8 = bArr[i9];
            if (b8 >= 0) {
                this.zzh = i11;
                return b8;
            }
            if (i10 - i11 >= 9) {
                int i12 = i9 + 2;
                int i13 = (bArr[i11] << 7) ^ b8;
                if (i13 < 0) {
                    i8 = i13 ^ (-128);
                } else {
                    int i14 = i9 + 3;
                    int i15 = (bArr[i12] << MqttWireMessage.MESSAGE_TYPE_DISCONNECT) ^ i13;
                    if (i15 >= 0) {
                        i8 = i15 ^ 16256;
                    } else {
                        int i16 = i9 + 4;
                        int i17 = i15 ^ (bArr[i14] << 21);
                        if (i17 < 0) {
                            i8 = (-2080896) ^ i17;
                        } else {
                            i14 = i9 + 5;
                            byte b9 = bArr[i16];
                            int i18 = (i17 ^ (b9 << 28)) ^ 266354560;
                            if (b9 < 0) {
                                i16 = i9 + 6;
                                if (bArr[i14] < 0) {
                                    i14 = i9 + 7;
                                    if (bArr[i16] < 0) {
                                        i16 = i9 + 8;
                                        if (bArr[i14] < 0) {
                                            i14 = i9 + 9;
                                            if (bArr[i16] < 0) {
                                                int i19 = i9 + 10;
                                                if (bArr[i14] >= 0) {
                                                    i12 = i19;
                                                    i8 = i18;
                                                }
                                            }
                                        }
                                    }
                                }
                                i8 = i18;
                            }
                            i8 = i18;
                        }
                        i12 = i16;
                    }
                    i12 = i14;
                }
                this.zzh = i12;
                return i8;
            }
        }
        return (int) zzr();
    }

    @Override // com.google.ads.interactivemedia.v3.internal.zzada
    public final int zzj() {
        return zzh();
    }

    @Override // com.google.ads.interactivemedia.v3.internal.zzada
    public final int zzk() {
        return zzada.zzC(zzi());
    }

    @Override // com.google.ads.interactivemedia.v3.internal.zzada
    public final int zzl() throws zzaeg {
        if (zzA()) {
            this.zzj = 0;
            return 0;
        }
        int iZzi = zzi();
        this.zzj = iZzi;
        if ((iZzi >>> 3) != 0) {
            return iZzi;
        }
        throw new zzaeg("Protocol message contained an invalid tag (zero).");
    }

    @Override // com.google.ads.interactivemedia.v3.internal.zzada
    public final int zzm() {
        return zzi();
    }

    @Override // com.google.ads.interactivemedia.v3.internal.zzada
    public final long zzn() {
        return zzp();
    }

    @Override // com.google.ads.interactivemedia.v3.internal.zzada
    public final long zzo() {
        return zzq();
    }

    public final long zzp() throws zzaeg {
        int i8 = this.zzh;
        if (this.zzf - i8 < 8) {
            throw new zzaeg("While parsing a protocol message, the input ended unexpectedly in the middle of a field.  This could mean either that the input has been truncated or that an embedded message misreported its own length.");
        }
        byte[] bArr = this.zze;
        this.zzh = i8 + 8;
        long j8 = bArr[i8];
        long j9 = (((long) bArr[i8 + 1]) & 255) << 8;
        long j10 = bArr[i8 + 2];
        long j11 = bArr[i8 + 3];
        return ((((long) bArr[i8 + 7]) & 255) << 56) | (j8 & 255) | j9 | ((j10 & 255) << 16) | ((j11 & 255) << 24) | ((bArr[i8 + 4] & 255) << 32) | ((bArr[i8 + 5] & 255) << 40) | ((bArr[i8 + 6] & 255) << 48);
    }

    public final long zzq() {
        long j8;
        long j9;
        int i8 = this.zzh;
        int i9 = this.zzf;
        if (i9 != i8) {
            byte[] bArr = this.zze;
            int i10 = i8 + 1;
            byte b8 = bArr[i8];
            if (b8 >= 0) {
                this.zzh = i10;
                return b8;
            }
            if (i9 - i10 >= 9) {
                int i11 = i8 + 2;
                int i12 = (bArr[i10] << 7) ^ b8;
                if (i12 < 0) {
                    j8 = i12 ^ (-128);
                } else {
                    int i13 = i8 + 3;
                    int i14 = (bArr[i11] << MqttWireMessage.MESSAGE_TYPE_DISCONNECT) ^ i12;
                    if (i14 >= 0) {
                        j8 = i14 ^ 16256;
                    } else {
                        int i15 = i8 + 4;
                        int i16 = i14 ^ (bArr[i13] << 21);
                        if (i16 < 0) {
                            long j10 = (-2080896) ^ i16;
                            i11 = i15;
                            j8 = j10;
                        } else {
                            i13 = i8 + 5;
                            long j11 = (((long) bArr[i15]) << 28) ^ ((long) i16);
                            if (j11 >= 0) {
                                j8 = j11 ^ 266354560;
                            } else {
                                i11 = i8 + 6;
                                long j12 = (((long) bArr[i13]) << 35) ^ j11;
                                if (j12 < 0) {
                                    j9 = -34093383808L;
                                } else {
                                    int i17 = i8 + 7;
                                    long j13 = j12 ^ (((long) bArr[i11]) << 42);
                                    if (j13 >= 0) {
                                        j8 = j13 ^ 4363953127296L;
                                    } else {
                                        i11 = i8 + 8;
                                        j12 = j13 ^ (((long) bArr[i17]) << 49);
                                        if (j12 < 0) {
                                            j9 = -558586000294016L;
                                        } else {
                                            i17 = i8 + 9;
                                            long j14 = (j12 ^ (((long) bArr[i11]) << 56)) ^ 71499008037633920L;
                                            if (j14 < 0) {
                                                i11 = i8 + 10;
                                                if (bArr[i17] >= 0) {
                                                    j8 = j14;
                                                }
                                            } else {
                                                j8 = j14;
                                            }
                                        }
                                    }
                                    i11 = i17;
                                }
                                j8 = j12 ^ j9;
                            }
                        }
                    }
                    i11 = i13;
                }
                this.zzh = i11;
                return j8;
            }
        }
        return zzr();
    }

    public final long zzr() throws zzaeg {
        long j8 = 0;
        for (int i8 = 0; i8 < 64; i8 += 7) {
            int i9 = this.zzh;
            if (i9 == this.zzf) {
                throw new zzaeg("While parsing a protocol message, the input ended unexpectedly in the middle of a field.  This could mean either that the input has been truncated or that an embedded message misreported its own length.");
            }
            byte[] bArr = this.zze;
            this.zzh = i9 + 1;
            byte b8 = bArr[i9];
            j8 |= ((long) (b8 & 127)) << i8;
            if ((b8 & 128) == 0) {
                return j8;
            }
        }
        throw new zzaeg("CodedInputStream encountered a malformed varint.");
    }

    @Override // com.google.ads.interactivemedia.v3.internal.zzada
    public final long zzs() {
        return zzp();
    }

    @Override // com.google.ads.interactivemedia.v3.internal.zzada
    public final long zzt() {
        return zzada.zzD(zzq());
    }

    @Override // com.google.ads.interactivemedia.v3.internal.zzada
    public final long zzu() {
        return zzq();
    }

    @Override // com.google.ads.interactivemedia.v3.internal.zzada
    public final zzacw zzv() throws zzaeg {
        int iZzi = zzi();
        if (iZzi > 0) {
            int i8 = this.zzf;
            int i9 = this.zzh;
            if (iZzi <= i8 - i9) {
                zzacw zzacwVarZzp = zzacw.zzp(this.zze, i9, iZzi);
                this.zzh += iZzi;
                return zzacwVarZzp;
            }
        }
        if (iZzi == 0) {
            return zzacw.zzb;
        }
        if (iZzi > 0) {
            int i10 = this.zzf;
            int i11 = this.zzh;
            if (iZzi <= i10 - i11) {
                int i12 = iZzi + i11;
                this.zzh = i12;
                return new zzacv(Arrays.copyOfRange(this.zze, i11, i12));
            }
        }
        if (iZzi <= 0) {
            throw new zzaeg("CodedInputStream encountered an embedded string or message which claimed to have negative size.");
        }
        throw new zzaeg("While parsing a protocol message, the input ended unexpectedly in the middle of a field.  This could mean either that the input has been truncated or that an embedded message misreported its own length.");
    }

    @Override // com.google.ads.interactivemedia.v3.internal.zzada
    public final String zzw() throws zzaeg {
        int iZzi = zzi();
        if (iZzi > 0) {
            int i8 = this.zzf;
            int i9 = this.zzh;
            if (iZzi <= i8 - i9) {
                String str = new String(this.zze, i9, iZzi, zzaee.zza);
                this.zzh += iZzi;
                return str;
            }
        }
        if (iZzi == 0) {
            return HttpUrl.FRAGMENT_ENCODE_SET;
        }
        if (iZzi < 0) {
            throw new zzaeg("CodedInputStream encountered an embedded string or message which claimed to have negative size.");
        }
        throw new zzaeg("While parsing a protocol message, the input ended unexpectedly in the middle of a field.  This could mean either that the input has been truncated or that an embedded message misreported its own length.");
    }

    @Override // com.google.ads.interactivemedia.v3.internal.zzada
    public final String zzx() throws zzaeg {
        int iZzi = zzi();
        if (iZzi > 0) {
            int i8 = this.zzf;
            int i9 = this.zzh;
            if (iZzi <= i8 - i9) {
                String strZzd = zzagr.zzd(this.zze, i9, iZzi);
                this.zzh += iZzi;
                return strZzd;
            }
        }
        if (iZzi == 0) {
            return HttpUrl.FRAGMENT_ENCODE_SET;
        }
        if (iZzi <= 0) {
            throw new zzaeg("CodedInputStream encountered an embedded string or message which claimed to have negative size.");
        }
        throw new zzaeg("While parsing a protocol message, the input ended unexpectedly in the middle of a field.  This could mean either that the input has been truncated or that an embedded message misreported its own length.");
    }

    @Override // com.google.ads.interactivemedia.v3.internal.zzada
    public final void zzy(int i8) throws zzaeg {
        if (this.zzj != 0) {
            throw new zzaeg("Protocol message end-group tag did not match expected tag.");
        }
    }

    @Override // com.google.ads.interactivemedia.v3.internal.zzada
    public final void zzz(int i8) {
        this.zzk = i8;
        zzF();
    }
}
