.class public final Lcom/google/android/gms/internal/ads/to;
.super Lcom/google/android/gms/internal/measurement/p2;
.source "SourceFile"


# instance fields
.field public final synthetic e:I

.field public final synthetic f:Ljava/lang/String;

.field public final synthetic g:Ljava/lang/String;

.field public final synthetic h:Lcom/google/android/gms/internal/ads/xo;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/xo;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 1

    .line 1
    iput p4, p0, Lcom/google/android/gms/internal/ads/to;->e:I

    .line 2
    .line 3
    const/4 v0, 0x1

    .line 4
    if-eq p4, v0, :cond_1

    .line 5
    .line 6
    const/4 v0, 0x2

    .line 7
    if-eq p4, v0, :cond_0

    .line 8
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    .line 11
    .line 12
    iput-object p2, p0, Lcom/google/android/gms/internal/ads/to;->f:Ljava/lang/String;

    .line 13
    .line 14
    iput-object p3, p0, Lcom/google/android/gms/internal/ads/to;->g:Ljava/lang/String;

    .line 15
    .line 16
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/to;->h:Lcom/google/android/gms/internal/ads/xo;

    .line 17
    .line 18
    return-void

    .line 19
    :cond_0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    .line 21
    .line 22
    iput-object p2, p0, Lcom/google/android/gms/internal/ads/to;->f:Ljava/lang/String;

    .line 23
    .line 24
    iput-object p3, p0, Lcom/google/android/gms/internal/ads/to;->g:Ljava/lang/String;

    .line 25
    .line 26
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/to;->h:Lcom/google/android/gms/internal/ads/xo;

    .line 27
    .line 28
    return-void

    .line 29
    :cond_1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    .line 31
    .line 32
    iput-object p2, p0, Lcom/google/android/gms/internal/ads/to;->f:Ljava/lang/String;

    .line 33
    .line 34
    iput-object p3, p0, Lcom/google/android/gms/internal/ads/to;->g:Ljava/lang/String;

    .line 35
    .line 36
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/to;->h:Lcom/google/android/gms/internal/ads/xo;

    .line 37
    .line 38
    return-void
.end method


# virtual methods
.method public final h(Lf3/j;)V
    .locals 3

    .line 1
    iget v0, p0, Lcom/google/android/gms/internal/ads/to;->e:I

    .line 2
    .line 3
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/to;->g:Ljava/lang/String;

    .line 4
    .line 5
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/to;->h:Lcom/google/android/gms/internal/ads/xo;

    .line 6
    .line 7
    packed-switch v0, :pswitch_data_0

    .line 8
    .line 9
    .line 10
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/xo;->D3(Ljava/lang/Object;)Ljava/lang/String;

    .line 11
    .line 12
    .line 13
    move-result-object p1

    .line 14
    invoke-virtual {v2, p1, v1}, Lcom/google/android/gms/internal/ads/xo;->E3(Ljava/lang/String;Ljava/lang/String;)V

    .line 15
    .line 16
    .line 17
    return-void

    .line 18
    :pswitch_0
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/xo;->D3(Ljava/lang/Object;)Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object p1

    .line 22
    invoke-virtual {v2, p1, v1}, Lcom/google/android/gms/internal/ads/xo;->E3(Ljava/lang/String;Ljava/lang/String;)V

    .line 23
    .line 24
    .line 25
    return-void

    .line 26
    :pswitch_1
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/xo;->D3(Ljava/lang/Object;)Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    move-result-object p1

    .line 30
    invoke-virtual {v2, p1, v1}, Lcom/google/android/gms/internal/ads/xo;->E3(Ljava/lang/String;Ljava/lang/String;)V

    .line 31
    .line 32
    .line 33
    return-void

    .line 34
    nop

    .line 35
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final bridge synthetic i(Ljava/lang/Object;)V
    .locals 4

    .line 1
    iget v0, p0, Lcom/google/android/gms/internal/ads/to;->e:I

    .line 2
    .line 3
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/to;->g:Ljava/lang/String;

    .line 4
    .line 5
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/to;->f:Ljava/lang/String;

    .line 6
    .line 7
    iget-object v3, p0, Lcom/google/android/gms/internal/ads/to;->h:Lcom/google/android/gms/internal/ads/xo;

    .line 8
    .line 9
    packed-switch v0, :pswitch_data_0

    .line 10
    .line 11
    .line 12
    check-cast p1, Lcom/google/android/gms/internal/ads/Ed;

    .line 13
    .line 14
    invoke-virtual {v3, p1, v2, v1}, Lcom/google/android/gms/internal/ads/xo;->z3(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;)V

    .line 15
    .line 16
    .line 17
    return-void

    .line 18
    :pswitch_0
    check-cast p1, Lcom/google/android/gms/internal/ads/zd;

    .line 19
    .line 20
    invoke-virtual {v3, p1, v2, v1}, Lcom/google/android/gms/internal/ads/xo;->z3(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;)V

    .line 21
    .line 22
    .line 23
    return-void

    .line 24
    :pswitch_1
    check-cast p1, Lcom/google/android/gms/internal/ads/Z5;

    .line 25
    .line 26
    invoke-virtual {v3, p1, v2, v1}, Lcom/google/android/gms/internal/ads/xo;->z3(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;)V

    .line 27
    .line 28
    .line 29
    return-void

    .line 30
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
