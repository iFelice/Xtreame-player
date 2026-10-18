package androidx.media;

import java.util.Arrays;
import org.videolan.libvlc.MediaPlayer;
import p000a.r;

/* JADX INFO: loaded from: classes.dex */
public class AudioAttributesImplBase implements AudioAttributesImpl {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public int f9392a = 0;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public int f9393b = 0;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public int f9394c = 0;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public int f9395d = -1;

    @Override // androidx.media.AudioAttributesImpl
    public final int a() {
        int i8 = this.f9395d;
        return i8 != -1 ? i8 : AudioAttributesCompat.b(this.f9394c, this.f9392a);
    }

    public final boolean equals(Object obj) {
        if (!(obj instanceof AudioAttributesImplBase)) {
            return false;
        }
        AudioAttributesImplBase audioAttributesImplBase = (AudioAttributesImplBase) obj;
        if (this.f9393b != audioAttributesImplBase.f9393b) {
            return false;
        }
        int i8 = this.f9394c;
        int i9 = audioAttributesImplBase.f9394c;
        int iA = audioAttributesImplBase.a();
        if (iA == 6) {
            i9 |= 4;
        } else if (iA == 7) {
            i9 |= 1;
        }
        return i8 == (i9 & MediaPlayer.Event.LengthChanged) && this.f9392a == audioAttributesImplBase.f9392a && this.f9395d == audioAttributesImplBase.f9395d;
    }

    public final int hashCode() {
        return Arrays.hashCode(new Object[]{Integer.valueOf(this.f9393b), Integer.valueOf(this.f9394c), Integer.valueOf(this.f9392a), Integer.valueOf(this.f9395d)});
    }

    public final String toString() {
        String strF;
        StringBuilder sb = new StringBuilder("AudioAttributesCompat:");
        if (this.f9395d != -1) {
            sb.append(" stream=");
            sb.append(this.f9395d);
            sb.append(" derived");
        }
        sb.append(" usage=");
        int i8 = this.f9392a;
        int i9 = AudioAttributesCompat.f9388b;
        switch (i8) {
            case 0:
                strF = "USAGE_UNKNOWN";
                break;
            case 1:
                strF = "USAGE_MEDIA";
                break;
            case 2:
                strF = "USAGE_VOICE_COMMUNICATION";
                break;
            case 3:
                strF = "USAGE_VOICE_COMMUNICATION_SIGNALLING";
                break;
            case 4:
                strF = "USAGE_ALARM";
                break;
            case 5:
                strF = "USAGE_NOTIFICATION";
                break;
            case 6:
                strF = "USAGE_NOTIFICATION_RINGTONE";
                break;
            case 7:
                strF = "USAGE_NOTIFICATION_COMMUNICATION_REQUEST";
                break;
            case 8:
                strF = "USAGE_NOTIFICATION_COMMUNICATION_INSTANT";
                break;
            case 9:
                strF = "USAGE_NOTIFICATION_COMMUNICATION_DELAYED";
                break;
            case 10:
                strF = "USAGE_NOTIFICATION_EVENT";
                break;
            case 11:
                strF = "USAGE_ASSISTANCE_ACCESSIBILITY";
                break;
            case 12:
                strF = "USAGE_ASSISTANCE_NAVIGATION_GUIDANCE";
                break;
            case 13:
                strF = "USAGE_ASSISTANCE_SONIFICATION";
                break;
            case 14:
                strF = "USAGE_GAME";
                break;
            case 15:
            default:
                strF = r.f("unknown usage ", i8);
                break;
            case 16:
                strF = "USAGE_ASSISTANT";
                break;
        }
        sb.append(strF);
        sb.append(" content=");
        sb.append(this.f9393b);
        sb.append(" flags=0x");
        sb.append(Integer.toHexString(this.f9394c).toUpperCase());
        return sb.toString();
    }
}
