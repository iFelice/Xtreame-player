.class public final Lcom/google/android/gms/internal/ads/Qa;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final b:Lcom/google/android/gms/internal/ads/Aa;


# instance fields
.field public final a:Lcom/google/android/gms/internal/ads/Ja;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/google/android/gms/internal/ads/Aa;

    const/4 v1, 0x5

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/ads/Aa;-><init>(I)V

    sput-object v0, Lcom/google/android/gms/internal/ads/Qa;->b:Lcom/google/android/gms/internal/ads/Aa;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lp3/a;Ljava/lang/String;Lcom/google/android/gms/internal/ads/Uw;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Lcom/google/android/gms/internal/ads/Ja;

    .line 5
    .line 6
    invoke-direct {v0, p1, p2, p3, p4}, Lcom/google/android/gms/internal/ads/Ja;-><init>(Landroid/content/Context;Lp3/a;Ljava/lang/String;Lcom/google/android/gms/internal/ads/Uw;)V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lcom/google/android/gms/internal/ads/Qa;->a:Lcom/google/android/gms/internal/ads/Ja;

    .line 10
    .line 11
    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;Lcom/google/android/gms/internal/ads/Oa;Lcom/google/android/gms/internal/ads/Na;)Lcom/google/android/gms/internal/ads/Sa;
    .locals 2

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/ads/Sa;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/Qa;->a:Lcom/google/android/gms/internal/ads/Ja;

    .line 4
    .line 5
    invoke-direct {v0, v1, p1, p2, p3}, Lcom/google/android/gms/internal/ads/Sa;-><init>(Lcom/google/android/gms/internal/ads/Ja;Ljava/lang/String;Lcom/google/android/gms/internal/ads/Oa;Lcom/google/android/gms/internal/ads/Na;)V

    .line 6
    .line 7
    .line 8
    return-object v0
.end method
