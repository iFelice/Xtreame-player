.class public final Lq0/m;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lz4/H;

.field public final b:LF/i;

.field public final c:Lm2/c;

.field public final d:Lm2/e;


# direct methods
.method public constructor <init>(Lz4/d0;LF/i;Lm2/c;Lm2/e;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    if-eqz p1, :cond_0

    .line 5
    .line 6
    invoke-static {p1}, Lz4/H;->s(Ljava/util/Collection;)Lz4/H;

    .line 7
    .line 8
    .line 9
    move-result-object p1

    .line 10
    goto :goto_0

    .line 11
    :cond_0
    sget-object p1, Lz4/H;->H:Lz4/F;

    .line 12
    .line 13
    sget-object p1, Lz4/d0;->K:Lz4/d0;

    .line 14
    .line 15
    :goto_0
    iput-object p1, p0, Lq0/m;->a:Lz4/H;

    .line 16
    .line 17
    iput-object p2, p0, Lq0/m;->b:LF/i;

    .line 18
    .line 19
    iput-object p3, p0, Lq0/m;->c:Lm2/c;

    .line 20
    .line 21
    iput-object p4, p0, Lq0/m;->d:Lm2/e;

    .line 22
    .line 23
    return-void
.end method
