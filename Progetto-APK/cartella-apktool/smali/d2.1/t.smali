.class public interface abstract Ld2/t;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final A:Ld2/s;

.field public static final B:Ld2/r;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Ld2/s;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Ld2/t;->A:Ld2/s;

    .line 7
    .line 8
    new-instance v0, Ld2/r;

    .line 9
    .line 10
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 11
    .line 12
    .line 13
    sput-object v0, Ld2/t;->B:Ld2/r;

    .line 14
    .line 15
    return-void
.end method
