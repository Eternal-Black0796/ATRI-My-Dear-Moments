.class public interface abstract Lcom/google/android/vending/licensing/LicenseCheckerCallback;
.super Ljava/lang/Object;
.source "LicenseCheckerCallback.java"


# static fields
.field public static final ERROR_CHECK_IN_PROGRESS:I = 0x4

.field public static final ERROR_INVALID_PACKAGE_NAME:I = 0x1

.field public static final ERROR_INVALID_PUBLIC_KEY:I = 0x5

.field public static final ERROR_MISSING_PERMISSION:I = 0x6

.field public static final ERROR_NON_MATCHING_UID:I = 0x2

.field public static final ERROR_NOT_MARKET_MANAGED:I = 0x3


# virtual methods
.method public abstract allow(I)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "reason"
        }
    .end annotation
.end method

.method public abstract applicationError(I)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "errorCode"
        }
    .end annotation
.end method

.method public abstract dontAllow(I)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "reason"
        }
    .end annotation
.end method
