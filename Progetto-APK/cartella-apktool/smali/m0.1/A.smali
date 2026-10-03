.class public final Lm0/A;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Z

.field public final b:Ljava/io/Serializable;

.field public final c:Ljava/io/Serializable;


# direct methods
.method public constructor <init>(I)V
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    if-eq p1, v0, :cond_0

    .line 3
    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    .line 6
    .line 7
    sget-object p1, Lz4/i0;->M:Lz4/i0;

    .line 8
    .line 9
    iput-object p1, p0, Lm0/A;->b:Ljava/io/Serializable;

    .line 10
    .line 11
    iput-boolean v0, p0, Lm0/A;->a:Z

    .line 12
    .line 13
    sget-object p1, Lz4/H;->H:Lz4/F;

    .line 14
    .line 15
    sget-object p1, Lz4/d0;->K:Lz4/d0;

    .line 16
    .line 17
    iput-object p1, p0, Lm0/A;->c:Ljava/io/Serializable;

    .line 18
    .line 19
    return-void

    .line 20
    :cond_0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    .line 22
    .line 23
    return-void
.end method
