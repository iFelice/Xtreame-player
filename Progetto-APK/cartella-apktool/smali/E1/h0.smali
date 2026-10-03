.class public final LE1/h0;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:Ljava/lang/Object;

.field public b:I

.field public c:I

.field public d:I

.field public e:I

.field public f:I


# direct methods
.method public constructor <init>(I)V
    .locals 1

    .line 1
    const/4 v0, 0x2

    .line 2
    if-eq p1, v0, :cond_0

    .line 3
    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    .line 6
    .line 7
    const/4 p1, 0x0

    .line 8
    iput p1, p0, LE1/h0;->d:I

    .line 9
    .line 10
    const/4 p1, 0x3

    .line 11
    iput p1, p0, LE1/h0;->e:I

    .line 12
    .line 13
    const/4 p1, 0x1

    .line 14
    iput p1, p0, LE1/h0;->f:I

    .line 15
    .line 16
    return-void

    .line 17
    :cond_0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    .line 19
    .line 20
    new-instance p1, Lcom/google/android/gms/internal/ads/mw;

    .line 21
    .line 22
    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    .line 23
    .line 24
    .line 25
    iput-object p1, p0, LE1/h0;->a:Ljava/lang/Object;

    .line 26
    .line 27
    return-void
.end method
