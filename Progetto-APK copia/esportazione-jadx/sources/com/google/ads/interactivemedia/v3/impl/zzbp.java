package com.google.ads.interactivemedia.v3.impl;

import com.google.api.Endpoint;
import java.io.BufferedInputStream;
import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.io.OutputStream;
import java.net.HttpURLConnection;
import java.net.SocketTimeoutException;
import java.net.URL;
import java.nio.charset.StandardCharsets;

/* JADX INFO: loaded from: classes.dex */
final class zzbp implements zzbq {
    private zzbp() {
        throw null;
    }

    public /* synthetic */ zzbp(zzbo zzboVar) {
    }

    /* JADX WARN: Code duplicated, block: B:55:0x00d1  */
    /* JADX WARN: Not initialized variable reg: 1, insn: 0x00a8: MOVE (r0 I:??[OBJECT, ARRAY]) = (r1 I:??[OBJECT, ARRAY]) (LINE:169), block:B:42:0x00a8 */
    @Override // com.google.ads.interactivemedia.v3.impl.zzbq
    public final com.google.ads.interactivemedia.v3.impl.data.zzbz zza(com.google.ads.interactivemedia.v3.impl.data.zzby zzbyVar) throws Throwable {
        HttpURLConnection httpURLConnection;
        IOException e8;
        HttpURLConnection httpURLConnection2;
        HttpURLConnection httpURLConnection3 = null;
        try {
            try {
                httpURLConnection = (HttpURLConnection) new URL(zzbyVar.url()).openConnection();
                try {
                    httpURLConnection.setRequestProperty("User-Agent", zzbyVar.userAgent());
                    httpURLConnection.setConnectTimeout(zzbyVar.connectionTimeoutMs());
                    httpURLConnection.setReadTimeout(zzbyVar.readTimeoutMs());
                    if (zzbyVar.requestType() == com.google.ads.interactivemedia.v3.impl.data.zzbx.POST) {
                        httpURLConnection.setDoOutput(true);
                        httpURLConnection.setChunkedStreamingMode(0);
                        String strContent = zzbyVar.content();
                        if (strContent != null) {
                            OutputStream outputStream = httpURLConnection.getOutputStream();
                            try {
                                outputStream.write(strContent.getBytes(StandardCharsets.UTF_8));
                                outputStream.close();
                            } catch (Throwable th) {
                                if (outputStream != null) {
                                    try {
                                        outputStream.close();
                                    } catch (Throwable th2) {
                                        th.addSuppressed(th2);
                                    }
                                }
                                throw th;
                            }
                        }
                    }
                    InputStream inputStream = httpURLConnection.getInputStream();
                    try {
                        BufferedInputStream bufferedInputStream = new BufferedInputStream(inputStream);
                        StringBuilder sb = new StringBuilder();
                        BufferedReader bufferedReader = new BufferedReader(new InputStreamReader(bufferedInputStream, StandardCharsets.UTF_8));
                        while (true) {
                            String line = bufferedReader.readLine();
                            if (line == null) {
                                break;
                            }
                            sb.append(line);
                        }
                        String string = sb.toString();
                        if (inputStream != null) {
                            inputStream.close();
                        }
                        String contentType = httpURLConnection.getContentType();
                        httpURLConnection.disconnect();
                        return com.google.ads.interactivemedia.v3.impl.data.zzbz.forResponse(zzbyVar.id(), string, contentType);
                    } catch (Throwable th3) {
                        if (inputStream != null) {
                            try {
                                inputStream.close();
                            } catch (Throwable th4) {
                                th3.addSuppressed(th4);
                            }
                        }
                        throw th3;
                    }
                } catch (IOException e9) {
                    e8 = e9;
                    com.google.ads.interactivemedia.v3.impl.data.zzbz zzbzVarForError = e8 instanceof SocketTimeoutException ? com.google.ads.interactivemedia.v3.impl.data.zzbz.forError(zzbyVar.id(), Endpoint.TARGET_FIELD_NUMBER) : com.google.ads.interactivemedia.v3.impl.data.zzbz.forError(zzbyVar.id(), 100);
                    if (httpURLConnection != null) {
                        httpURLConnection.disconnect();
                    }
                    return zzbzVarForError;
                }
            } catch (IOException e10) {
                httpURLConnection = null;
                e8 = e10;
            } catch (Throwable th5) {
                th = th5;
                if (httpURLConnection3 != null) {
                    httpURLConnection3.disconnect();
                }
                throw th;
            }
        } catch (Throwable th6) {
            th = th6;
            httpURLConnection3 = httpURLConnection2;
            if (httpURLConnection3 != null) {
                httpURLConnection3.disconnect();
            }
            throw th;
        }
    }
}
