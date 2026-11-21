package com.doctruyen.ui.theme

import android.graphics.Color
import android.graphics.drawable.GradientDrawable

object AppColors {
    // Dark Theme (Obsidian Deep)
    val DARK_BG = Color.parseColor("#0A0D14")
    val DARK_SURFACE = Color.parseColor("#121722")
    val DARK_SURFACE_ELEVATED = Color.parseColor("#1A2232")
    val DARK_BORDER = Color.parseColor("#253046")
    val DARK_TEXT_PRIMARY = Color.parseColor("#F1F5F9")
    val DARK_TEXT_SECONDARY = Color.parseColor("#94A3B8")
    val DARK_TEXT_MUTED = Color.parseColor("#64748B")

    // Light Theme
    val LIGHT_BG = Color.parseColor("#F8FAFC")
    val LIGHT_SURFACE = Color.parseColor("#FFFFFF")
    val LIGHT_SURFACE_ELEVATED = Color.parseColor("#F1F5F9")
    val LIGHT_BORDER = Color.parseColor("#E2E8F0")
    val LIGHT_TEXT_PRIMARY = Color.parseColor("#0F172A")
    val LIGHT_TEXT_SECONDARY = Color.parseColor("#475569")
    val LIGHT_TEXT_MUTED = Color.parseColor("#94A3B8")

    // Accent Colors
    val ACCENT_BLUE = Color.parseColor("#2563EB")
    val ACCENT_BLUE_LIGHT = Color.parseColor("#60A5FA")
    val ACCENT_CYAN = Color.parseColor("#06B6D4")
    val ACCENT_EMERALD = Color.parseColor("#10B981")
    val ACCENT_AMBER = Color.parseColor("#F59E0B")
    val ACCENT_ROSE = Color.parseColor("#F43F5E")

    fun pillBackground(fillColor: Int, strokeColor: Int = 0, strokeWidthPx: Int = 0, radiusPx: Float): GradientDrawable {
        val gd = GradientDrawable()
        gd.shape = GradientDrawable.RECTANGLE
        gd.setColor(fillColor)
        if (strokeWidthPx > 0 && strokeColor != 0) {
            gd.setStroke(strokeWidthPx, strokeColor)
        }
        gd.cornerRadius = radiusPx
        return gd
    }
}
