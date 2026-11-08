package k7;

import java.io.InputStream;
import java.math.BigDecimal;
import java.math.RoundingMode;
import java.net.HttpURLConnection;
import java.net.URL;
import java.util.ArrayList;
import java.util.Iterator;

/* JADX INFO: loaded from: classes2.dex */
public final class a extends Thread {

    /* JADX INFO: renamed from: G, reason: collision with root package name */
    public String f26015G;

    /* JADX INFO: renamed from: H, reason: collision with root package name */
    public long f26016H;

    /* JADX INFO: renamed from: I, reason: collision with root package name */
    public double f26017I;

    /* JADX INFO: renamed from: J, reason: collision with root package name */
    public int f26018J;

    /* JADX INFO: renamed from: K, reason: collision with root package name */
    public double f26019K;

    /* JADX INFO: renamed from: L, reason: collision with root package name */
    public boolean f26020L;

    /* JADX INFO: renamed from: M, reason: collision with root package name */
    public double f26021M;

    /* JADX INFO: renamed from: N, reason: collision with root package name */
    public int f26022N;

    /* JADX INFO: renamed from: O, reason: collision with root package name */
    public HttpURLConnection f26023O;

    @Override // java.lang.Thread, java.lang.Runnable
    public final void run() {
        int responseCode = 0;
        this.f26018J = 0;
        ArrayList arrayList = new ArrayList();
        StringBuilder sb = new StringBuilder();
        String str = this.f26015G;
        sb.append(str);
        sb.append("random4000x4000.jpg");
        arrayList.add(sb.toString());
        arrayList.add(str + "random3000x3000.jpg");
        this.f26016H = System.currentTimeMillis();
        Iterator it = arrayList.iterator();
        loop0: while (it.hasNext()) {
            try {
                HttpURLConnection httpURLConnection = (HttpURLConnection) new URL((String) it.next()).openConnection();
                this.f26023O = httpURLConnection;
                responseCode = httpURLConnection.getResponseCode();
            } catch (Exception e8) {
                e8.printStackTrace();
            }
            if (responseCode == 200) {
                try {
                    byte[] bArr = new byte[10240];
                    InputStream inputStream = this.f26023O.getInputStream();
                    while (true) {
                        int i8 = inputStream.read(bArr);
                        if (i8 == -1) {
                            inputStream.close();
                            this.f26023O.disconnect();
                            break;
                        }
                        this.f26018J += i8;
                        double dCurrentTimeMillis = (System.currentTimeMillis() - this.f26016H) / 1000.0d;
                        this.f26017I = dCurrentTimeMillis;
                        int i9 = this.f26018J;
                        double dDoubleValue = 0.0d;
                        if (i9 >= 0) {
                            try {
                                dDoubleValue = new BigDecimal(((double) ((i9 * 8) / 1000000)) / dCurrentTimeMillis).setScale(2, RoundingMode.HALF_UP).doubleValue();
                            } catch (Exception unused) {
                            }
                            this.f26021M = dDoubleValue;
                        } else {
                            this.f26021M = 0.0d;
                        }
                        if (this.f26017I >= this.f26022N) {
                            break loop0;
                        }
                    }
                } catch (Exception e9) {
                    e9.printStackTrace();
                }
            } else {
                System.out.println("Link not found...");
            }
        }
        double dCurrentTimeMillis2 = (System.currentTimeMillis() - this.f26016H) / 1000.0d;
        this.f26017I = dCurrentTimeMillis2;
        this.f26019K = (((double) (this.f26018J * 8)) / 1000000.0d) / dCurrentTimeMillis2;
        this.f26020L = true;
    }
}
