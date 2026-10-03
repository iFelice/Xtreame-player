package W0;

import androidx.media3.extractor.FlacStreamMetadata;
import com.google.android.gms.internal.measurement.H1;

/* JADX INFO: loaded from: classes.dex */
public class x implements F {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f7459a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final long f7460b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final Object f7461c;

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public x(long j8) {
        this(j8, 0L);
        this.f7459a = 1;
    }

    @Override // W0.F
    public final boolean f() {
        switch (this.f7459a) {
            case 1:
                return false;
            default:
                return true;
        }
    }

    @Override // W0.F
    public final E k(long j8) {
        int i8 = this.f7459a;
        int i9 = 1;
        Object obj = this.f7461c;
        switch (i8) {
            case 0:
                FlacStreamMetadata flacStreamMetadata = (FlacStreamMetadata) obj;
                H1.j(flacStreamMetadata.seekTable);
                y yVar = flacStreamMetadata.seekTable;
                long[] jArr = yVar.f7462a;
                int iE = p117p0.M.e(jArr, flacStreamMetadata.getSampleNumber(j8), false);
                long j9 = iE == -1 ? 0L : jArr[iE];
                long[] jArr2 = yVar.f7463b;
                long j10 = iE != -1 ? jArr2[iE] : 0L;
                long j11 = (j9 * 1000000) / ((long) ((FlacStreamMetadata) obj).sampleRate);
                long j12 = this.f7460b;
                G g8 = new G(j11, j10 + j12);
                if (j11 == j8 || iE == jArr.length - 1) {
                    return new E(g8, g8);
                }
                int i10 = iE + 1;
                return new E(g8, new G((jArr[i10] * 1000000) / ((long) ((FlacStreamMetadata) obj).sampleRate), j12 + jArr2[i10]));
            case 1:
                return (E) obj;
            default:
                Y0.b bVar = (Y0.b) obj;
                E eB = bVar.f8012i[0].b(j8);
                while (true) {
                    Y0.e[] eVarArr = bVar.f8012i;
                    if (i9 >= eVarArr.length) {
                        return eB;
                    }
                    E eB2 = eVarArr[i9].b(j8);
                    if (eB2.f7324a.f7328b < eB.f7324a.f7328b) {
                        eB = eB2;
                    }
                    i9++;
                }
                break;
        }
    }

    @Override // W0.F
    public final long m() {
        switch (this.f7459a) {
            case 0:
                return ((FlacStreamMetadata) this.f7461c).getDurationUs();
            default:
                return this.f7460b;
        }
    }

    public /* synthetic */ x(Object obj, int i8, long j8) {
        this.f7459a = i8;
        this.f7461c = obj;
        this.f7460b = j8;
    }

    public x(long j8, long j9) {
        this.f7459a = 1;
        this.f7460b = j8;
        G g8 = j9 == 0 ? G.f7326c : new G(0L, j9);
        this.f7461c = new E(g8, g8);
    }
}
