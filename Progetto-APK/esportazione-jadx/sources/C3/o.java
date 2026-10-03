package C3;

import com.google.android.gms.cast.MediaInfo;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes.dex */
public final class o {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final p f1556a;

    public o(MediaInfo mediaInfo) {
        this.f1556a = new p(mediaInfo, 0, true, Double.NaN, Double.POSITIVE_INFINITY, 0.0d, null, null);
    }

    public final p a() {
        p pVar = this.f1556a;
        if (pVar.f1557G == null) {
            throw new IllegalArgumentException("media cannot be null.");
        }
        if (!Double.isNaN(pVar.f1560J) && pVar.f1560J < 0.0d) {
            throw new IllegalArgumentException("startTime cannot be negative or NaN.");
        }
        if (Double.isNaN(pVar.f1561K)) {
            throw new IllegalArgumentException("playbackDuration cannot be NaN.");
        }
        if (Double.isNaN(pVar.f1562L) || pVar.f1562L < 0.0d) {
            throw new IllegalArgumentException("preloadTime cannot be negative or Nan.");
        }
        return pVar;
    }

    public o(JSONObject jSONObject) {
        this.f1556a = new p(jSONObject);
    }
}
