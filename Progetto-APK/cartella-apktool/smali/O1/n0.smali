.class public final LO1/n0;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final d:Lu/e;


# instance fields
.field public a:I

.field public b:Lj0/c;

.field public c:Lj0/c;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 1
    new-instance v0, Lu/e;

    .line 2
    .line 3
    const/16 v1, 0x14

    .line 4
    .line 5
    const/4 v2, 0x1

    .line 6
    invoke-direct {v0, v1, v2}, Lu/e;-><init>(II)V

    .line 7
    .line 8
    .line 9
    sput-object v0, LO1/n0;->d:Lu/e;

    .line 10
    .line 11
    return-void
.end method

.method public static a()LO1/n0;
    .locals 1

    .line 1
    sget-object v0, LO1/n0;->d:Lu/e;

    .line 2
    .line 3
    invoke-virtual {v0}, Lu/e;->h()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, LO1/n0;

    .line 8
    .line 9
    if-nez v0, :cond_0

    .line 10
    .line 11
    new-instance v0, LO1/n0;

    .line 12
    .line 13
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 14
    .line 15
    .line 16
    :cond_0
    return-object v0
.end method
