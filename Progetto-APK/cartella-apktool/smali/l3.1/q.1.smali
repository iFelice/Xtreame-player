.class public final Ll3/q;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final d:Ll3/q;


# instance fields
.field public final a:LF0/u;

.field public final b:Lcom/google/android/gms/internal/ads/kH;

.field public final c:Lcom/google/android/gms/internal/ads/O7;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Ll3/q;

    .line 2
    .line 3
    invoke-direct {v0}, Ll3/q;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Ll3/q;->d:Ll3/q;

    .line 7
    .line 8
    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .line 1
    new-instance v0, LF0/u;

    .line 2
    .line 3
    const/4 v1, 0x2

    .line 4
    invoke-direct {v0, v1}, LF0/u;-><init>(I)V

    .line 5
    .line 6
    .line 7
    new-instance v1, Lcom/google/android/gms/internal/ads/kH;

    .line 8
    .line 9
    const/16 v2, 0x1b

    .line 10
    .line 11
    invoke-direct {v1, v2}, Lcom/google/android/gms/internal/ads/kH;-><init>(I)V

    .line 12
    .line 13
    .line 14
    new-instance v2, Lcom/google/android/gms/internal/ads/O7;

    .line 15
    .line 16
    invoke-direct {v2}, Lcom/google/android/gms/internal/ads/O7;-><init>()V

    .line 17
    .line 18
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    .line 21
    .line 22
    iput-object v0, p0, Ll3/q;->a:LF0/u;

    .line 23
    .line 24
    iput-object v1, p0, Ll3/q;->b:Lcom/google/android/gms/internal/ads/kH;

    .line 25
    .line 26
    iput-object v2, p0, Ll3/q;->c:Lcom/google/android/gms/internal/ads/O7;

    .line 27
    .line 28
    return-void
.end method
