.class public abstract Lcom/google/android/gms/internal/ads/g8;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Lcom/google/android/gms/internal/ads/f8;

.field public static final b:Lcom/google/android/gms/internal/ads/f8;

.field public static final c:Lcom/google/android/gms/internal/ads/f8;

.field public static final d:Lcom/google/android/gms/internal/ads/f8;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 1
    const-string v0, "gads:afs:csa_send_tcf_data"

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/f8;->j(Ljava/lang/String;Z)Lcom/google/android/gms/internal/ads/f8;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    sput-object v0, Lcom/google/android/gms/internal/ads/g8;->a:Lcom/google/android/gms/internal/ads/f8;

    .line 9
    .line 10
    new-instance v0, Lcom/google/android/gms/internal/ads/f8;

    .line 11
    .line 12
    const-string v1, "gads:afs:csa_tcf_data_to_collect"

    .line 13
    .line 14
    const-string v2, "[{\"bk\":\"tcString\",\"sk\":\"IABTCF_TCString\",\"type\":0},{\"bk\":\"gdprApplies\",\"sk\":\"IABTCF_gdprApplies\",\"type\":1},{\"bk\":\"usPrivacy\",\"sk\":\"IABUSPrivacy_String\",\"type\":0}]"

    .line 15
    .line 16
    const/4 v3, 0x4

    .line 17
    invoke-direct {v0, v1, v2, v3}, Lcom/google/android/gms/internal/ads/f8;-><init>(Ljava/lang/String;Ljava/lang/Object;I)V

    .line 18
    .line 19
    .line 20
    sput-object v0, Lcom/google/android/gms/internal/ads/g8;->b:Lcom/google/android/gms/internal/ads/f8;

    .line 21
    .line 22
    new-instance v0, Lcom/google/android/gms/internal/ads/f8;

    .line 23
    .line 24
    const-string v1, "gads:afs:csa_webview_custom_domain_param_key"

    .line 25
    .line 26
    const-string v2, "csa_customDomain"

    .line 27
    .line 28
    invoke-direct {v0, v1, v2, v3}, Lcom/google/android/gms/internal/ads/f8;-><init>(Ljava/lang/String;Ljava/lang/Object;I)V

    .line 29
    .line 30
    .line 31
    sput-object v0, Lcom/google/android/gms/internal/ads/g8;->c:Lcom/google/android/gms/internal/ads/f8;

    .line 32
    .line 33
    new-instance v0, Lcom/google/android/gms/internal/ads/f8;

    .line 34
    .line 35
    const-string v1, "gads:afs:csa_webview_static_file_path"

    .line 36
    .line 37
    const-string v2, "/afs/ads/i/webview.html"

    .line 38
    .line 39
    invoke-direct {v0, v1, v2, v3}, Lcom/google/android/gms/internal/ads/f8;-><init>(Ljava/lang/String;Ljava/lang/Object;I)V

    .line 40
    .line 41
    .line 42
    sput-object v0, Lcom/google/android/gms/internal/ads/g8;->d:Lcom/google/android/gms/internal/ads/f8;

    .line 43
    .line 44
    return-void
.end method
