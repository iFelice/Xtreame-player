package p015b6;

import com.google.protobuf.DescriptorProtos$FileOptions;
import javax.security.auth.x500.X500Principal;
import org.eclipse.paho.client.mqttv3.MqttConnectOptions;

/* JADX INFO: loaded from: classes2.dex */
public final class c {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final String f9896a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final int f9897b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public int f9898c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public int f9899d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public int f9900e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public int f9901f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public char[] f9902g;

    public c(X500Principal x500Principal) {
        String name = x500Principal.getName("RFC2253");
        this.f9896a = name;
        this.f9897b = name.length();
    }

    public final int a(int i8) {
        int i9;
        int i10;
        int i11 = i8 + 1;
        int i12 = this.f9897b;
        String str = this.f9896a;
        if (i11 >= i12) {
            throw new IllegalStateException("Malformed DN: " + str);
        }
        char[] cArr = this.f9902g;
        char c8 = cArr[i8];
        if (c8 >= '0' && c8 <= '9') {
            i9 = c8 - '0';
        } else if (c8 >= 'a' && c8 <= 'f') {
            i9 = c8 - 'W';
        } else {
            if (c8 < 'A' || c8 > 'F') {
                throw new IllegalStateException("Malformed DN: " + str);
            }
            i9 = c8 - '7';
        }
        char c9 = cArr[i11];
        if (c9 >= '0' && c9 <= '9') {
            i10 = c9 - '0';
        } else if (c9 >= 'a' && c9 <= 'f') {
            i10 = c9 - 'W';
        } else {
            if (c9 < 'A' || c9 > 'F') {
                throw new IllegalStateException("Malformed DN: " + str);
            }
            i10 = c9 - '7';
        }
        return (i9 << 4) + i10;
    }

    public final char b() {
        int i8;
        int i9 = this.f9898c + 1;
        this.f9898c = i9;
        int i10 = this.f9897b;
        if (i9 == i10) {
            throw new IllegalStateException("Unexpected end of DN: " + this.f9896a);
        }
        char c8 = this.f9902g[i9];
        if (c8 != ' ' && c8 != '%' && c8 != '\\' && c8 != '_' && c8 != '\"' && c8 != '#') {
            switch (c8) {
                default:
                    switch (c8) {
                        case ';':
                        case MqttConnectOptions.KEEP_ALIVE_INTERVAL_DEFAULT /* 60 */:
                        case '=':
                        case '>':
                            break;
                        default:
                            int iA = a(i9);
                            this.f9898c++;
                            if (iA >= 128) {
                                if (iA >= 192 && iA <= 247) {
                                    if (iA <= 223) {
                                        iA &= 31;
                                        i8 = 1;
                                    } else if (iA <= 239) {
                                        iA &= 15;
                                        i8 = 2;
                                    } else {
                                        iA &= 7;
                                        i8 = 3;
                                    }
                                    for (int i11 = 0; i11 < i8; i11++) {
                                        int i12 = this.f9898c;
                                        int i13 = i12 + 1;
                                        this.f9898c = i13;
                                        if (i13 != i10 && this.f9902g[i13] == '\\') {
                                            int i14 = i12 + 2;
                                            this.f9898c = i14;
                                            int iA2 = a(i14);
                                            this.f9898c++;
                                            if ((iA2 & 192) == 128) {
                                                iA = (iA << 6) + (iA2 & 63);
                                            }
                                        }
                                    }
                                }
                                return '?';
                            }
                            return (char) iA;
                    }
                case DescriptorProtos$FileOptions.PHP_GENERIC_SERVICES_FIELD_NUMBER /* 42 */:
                case '+':
                case DescriptorProtos$FileOptions.PHP_METADATA_NAMESPACE_FIELD_NUMBER /* 44 */:
                    return c8;
            }
        }
        return c8;
    }

    public final String c() {
        int i8;
        int i9;
        int i10;
        char c8;
        int i11;
        char c9;
        char c10;
        while (true) {
            i8 = this.f9898c;
            i9 = this.f9897b;
            if (i8 >= i9 || this.f9902g[i8] != ' ') {
                break;
            }
            this.f9898c = i8 + 1;
        }
        if (i8 == i9) {
            return null;
        }
        this.f9899d = i8;
        this.f9898c = i8 + 1;
        while (true) {
            i10 = this.f9898c;
            if (i10 >= i9 || (c10 = this.f9902g[i10]) == '=' || c10 == ' ') {
                break;
            }
            this.f9898c = i10 + 1;
        }
        String str = this.f9896a;
        if (i10 >= i9) {
            throw new IllegalStateException("Unexpected end of DN: " + str);
        }
        this.f9900e = i10;
        if (this.f9902g[i10] == ' ') {
            while (true) {
                i11 = this.f9898c;
                if (i11 >= i9 || (c9 = this.f9902g[i11]) == '=' || c9 != ' ') {
                    break;
                }
                this.f9898c = i11 + 1;
            }
            if (this.f9902g[i11] != '=' || i11 == i9) {
                throw new IllegalStateException("Unexpected end of DN: " + str);
            }
        }
        this.f9898c++;
        while (true) {
            int i12 = this.f9898c;
            if (i12 >= i9 || this.f9902g[i12] != ' ') {
                break;
            }
            this.f9898c = i12 + 1;
        }
        int i13 = this.f9900e;
        int i14 = this.f9899d;
        if (i13 - i14 > 4) {
            char[] cArr = this.f9902g;
            if (cArr[i14 + 3] == '.' && (((c8 = cArr[i14]) == 'O' || c8 == 'o') && ((cArr[i14 + 1] == 'I' || cArr[i14 + 1] == 'i') && (cArr[i14 + 2] == 'D' || cArr[i14 + 2] == 'd')))) {
                this.f9899d = i14 + 4;
            }
        }
        char[] cArr2 = this.f9902g;
        int i15 = this.f9899d;
        return new String(cArr2, i15, i13 - i15);
    }
}
