.class public final enum Lcom/google/android/gms/internal/ads/wx;
.super Ljava/lang/Enum;
.source "SourceFile"


# static fields
.field public static final enum H:Lcom/google/android/gms/internal/ads/wx;

.field public static final enum I:Lcom/google/android/gms/internal/ads/wx;

.field public static final synthetic J:[Lcom/google/android/gms/internal/ads/wx;


# instance fields
.field public final G:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/ads/wx;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    const-string v2, "html"

    .line 5
    .line 6
    const-string v3, "HTML"

    .line 7
    .line 8
    invoke-direct {v0, v3, v1, v2}, Lcom/google/android/gms/internal/ads/wx;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    .line 9
    .line 10
    .line 11
    sput-object v0, Lcom/google/android/gms/internal/ads/wx;->H:Lcom/google/android/gms/internal/ads/wx;

    .line 12
    .line 13
    new-instance v2, Lcom/google/android/gms/internal/ads/wx;

    .line 14
    .line 15
    const/4 v3, 0x1

    .line 16
    const-string v4, "native"

    .line 17
    .line 18
    const-string v5, "NATIVE"

    .line 19
    .line 20
    invoke-direct {v2, v5, v3, v4}, Lcom/google/android/gms/internal/ads/wx;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    .line 21
    .line 22
    .line 23
    new-instance v4, Lcom/google/android/gms/internal/ads/wx;

    .line 24
    .line 25
    const/4 v5, 0x2

    .line 26
    const-string v6, "javascript"

    .line 27
    .line 28
    const-string v7, "JAVASCRIPT"

    .line 29
    .line 30
    invoke-direct {v4, v7, v5, v6}, Lcom/google/android/gms/internal/ads/wx;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    .line 31
    .line 32
    .line 33
    sput-object v4, Lcom/google/android/gms/internal/ads/wx;->I:Lcom/google/android/gms/internal/ads/wx;

    .line 34
    .line 35
    const/4 v6, 0x3

    .line 36
    new-array v6, v6, [Lcom/google/android/gms/internal/ads/wx;

    .line 37
    .line 38
    aput-object v0, v6, v1

    .line 39
    .line 40
    aput-object v2, v6, v3

    .line 41
    .line 42
    aput-object v4, v6, v5

    .line 43
    .line 44
    sput-object v6, Lcom/google/android/gms/internal/ads/wx;->J:[Lcom/google/android/gms/internal/ads/wx;

    .line 45
    .line 46
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 2
    .line 3
    .line 4
    iput-object p3, p0, Lcom/google/android/gms/internal/ads/wx;->G:Ljava/lang/String;

    .line 5
    .line 6
    return-void
.end method

.method public static values()[Lcom/google/android/gms/internal/ads/wx;
    .locals 1

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/ads/wx;->J:[Lcom/google/android/gms/internal/ads/wx;

    .line 2
    .line 3
    invoke-virtual {v0}, [Lcom/google/android/gms/internal/ads/wx;->clone()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, [Lcom/google/android/gms/internal/ads/wx;

    .line 8
    .line 9
    return-object v0
.end method


# virtual methods
.method public final toString()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/wx;->G:Ljava/lang/String;

    return-object v0
.end method
