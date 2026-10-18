.class public final LF3/k;
.super LE3/h;
.source "SourceFile"


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Ljava/lang/Object;


# direct methods
.method public constructor <init>(LF3/l;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput v0, p0, LF3/k;->a:I

    .line 3
    iput-object p1, p0, LF3/k;->b:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;I)V
    .locals 0

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    iput p2, p0, LF3/k;->a:I

    iput-object p1, p0, LF3/k;->b:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;JIJJ)V
    .locals 2

    .line 1
    iget v0, p0, LF3/k;->a:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    return-void

    .line 7
    :pswitch_0
    iget-object v0, p0, LF3/k;->b:Ljava/lang/Object;

    .line 8
    .line 9
    check-cast v0, LD3/c;

    .line 10
    .line 11
    iget-object v0, v0, LD3/c;->l:Lcom/google/android/gms/internal/cast/P1;

    .line 12
    .line 13
    if-eqz v0, :cond_0

    .line 14
    .line 15
    iget-object v0, v0, Lcom/google/android/gms/internal/cast/P1;->G:Lo/j;

    .line 16
    .line 17
    invoke-virtual {v0}, Lo/j;->d()Lcom/google/android/gms/internal/cast/Z2;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    new-instance v1, Lcom/google/android/gms/internal/cast/S0;

    .line 22
    .line 23
    invoke-direct {v1, p1}, Lcom/google/android/gms/internal/cast/S0;-><init>(Ljava/lang/String;)V

    .line 24
    .line 25
    .line 26
    iput-wide p2, v1, Lcom/google/android/gms/internal/cast/S0;->b:J

    .line 27
    .line 28
    iput p4, v1, Lcom/google/android/gms/internal/cast/S0;->c:I

    .line 29
    .line 30
    iput-wide p5, v1, Lcom/google/android/gms/internal/cast/S0;->d:J

    .line 31
    .line 32
    iput-wide p7, v1, Lcom/google/android/gms/internal/cast/S0;->e:J

    .line 33
    .line 34
    new-instance p1, Lcom/google/android/gms/internal/cast/h1;

    .line 35
    .line 36
    invoke-direct {p1, v1}, Lcom/google/android/gms/internal/cast/h1;-><init>(Lcom/google/android/gms/internal/cast/S0;)V

    .line 37
    .line 38
    .line 39
    iget-wide p2, v0, Lcom/google/android/gms/internal/cast/Z2;->h:J

    .line 40
    .line 41
    iput-wide p2, p1, Lcom/google/android/gms/internal/cast/h1;->f:J

    .line 42
    .line 43
    iget-object p2, v0, Lcom/google/android/gms/internal/cast/Z2;->d:Ljava/util/List;

    .line 44
    .line 45
    invoke-interface {p2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 46
    .line 47
    .line 48
    :cond_0
    return-void

    .line 49
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
    .end packed-switch
.end method
