.class public final Ll/s1;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:Ljava/lang/Object;

.field public b:Ljava/lang/Object;

.field public c:Ljava/lang/Object;

.field public d:Ljava/lang/Object;

.field public e:Ljava/lang/Object;

.field public f:Ljava/lang/Object;

.field public g:Ljava/lang/Object;


# direct methods
.method public constructor <init>(I)V
    .locals 3

    .line 1
    const/4 v0, 0x4

    if-eq p1, v0, :cond_2

    const/4 v0, 0x6

    if-eq p1, v0, :cond_1

    const/16 v0, 0xa

    if-eq p1, v0, :cond_0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void

    .line 3
    :cond_0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide v1, 0x2540be400L

    .line 4
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    iput-object p1, p0, Ll/s1;->a:Ljava/lang/Object;

    const-wide v1, 0x6fc23ac00L

    .line 5
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    iput-object p1, p0, Ll/s1;->b:Ljava/lang/Object;

    const-wide v1, 0x45d964b800L

    .line 6
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    iput-object p1, p0, Ll/s1;->c:Ljava/lang/Object;

    .line 7
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, p0, Ll/s1;->d:Ljava/lang/Object;

    return-void

    .line 8
    :cond_1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance p1, Lr/m;

    const/4 v0, 0x0

    .line 9
    invoke-direct {p1, v0}, Lr/m;-><init>(I)V

    .line 10
    iput-object p1, p0, Ll/s1;->f:Ljava/lang/Object;

    new-instance p1, Lr/m;

    .line 11
    invoke-direct {p1, v0}, Lr/m;-><init>(I)V

    .line 12
    iput-object p1, p0, Ll/s1;->g:Ljava/lang/Object;

    return-void

    .line 13
    :cond_2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance p1, Lcom/google/android/gms/internal/ads/kH;

    const/16 v0, 0xc

    invoke-direct {p1, v0}, Lcom/google/android/gms/internal/ads/kH;-><init>(I)V

    iput-object p1, p0, Ll/s1;->c:Ljava/lang/Object;

    sget-object p1, Lcom/google/android/gms/internal/ads/uA;->H:Lcom/google/android/gms/internal/ads/sA;

    .line 14
    sget-object p1, Lcom/google/android/gms/internal/ads/PA;->K:Lcom/google/android/gms/internal/ads/PA;

    .line 15
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Ll/s1;->d:Ljava/lang/Object;

    .line 16
    sget-object p1, Lcom/google/android/gms/internal/ads/PA;->K:Lcom/google/android/gms/internal/ads/PA;

    .line 17
    iput-object p1, p0, Ll/s1;->e:Ljava/lang/Object;

    new-instance p1, Lcom/google/android/gms/internal/ads/kH;

    const/16 v0, 0xd

    invoke-direct {p1, v0}, Lcom/google/android/gms/internal/ads/kH;-><init>(I)V

    iput-object p1, p0, Ll/s1;->f:Ljava/lang/Object;

    .line 18
    sget-object p1, Lcom/google/android/gms/internal/ads/J5;->a:Lcom/google/android/gms/internal/ads/J5;

    iput-object p1, p0, Ll/s1;->g:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Lcom/google/android/gms/internal/ads/V7;Landroid/webkit/WebView;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/internal/ads/wx;)V
    .locals 1

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Ll/s1;->c:Ljava/lang/Object;

    new-instance v0, Ljava/util/HashMap;

    .line 20
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Ll/s1;->d:Ljava/lang/Object;

    iput-object p1, p0, Ll/s1;->a:Ljava/lang/Object;

    iput-object p2, p0, Ll/s1;->b:Ljava/lang/Object;

    iput-object p5, p0, Ll/s1;->g:Ljava/lang/Object;

    iput-object p3, p0, Ll/s1;->f:Ljava/lang/Object;

    iput-object p4, p0, Ll/s1;->e:Ljava/lang/Object;

    return-void
.end method
